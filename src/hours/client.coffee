class Project extends Backbone.Model
class Projects extends Backbone.Collection
	model: Project
project = new Project
project.name = 'FooProject'
class ProjectView extends Backbone.View
	tagName: 'li'
	template: _.template '<span><%=name%></span>'
	initialize: -> @model.on 'change', @render
	render: ->
		@$el.html(@template(@model.toJSON()))
		return this
class AppView extends Backbone.View
	el: $("#hoursapp")
	render: ->
		console.log 'rendering...'
		$("#header").text project.name
	initialize: ->
		console.log 'initializing view...'
		this.render()
$ ->
	console.log 'document loaded...'
	app = new AppView
