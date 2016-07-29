# Remove framer cursor
document.body.style.cursor = "auto"

# Import file "PRX_Final_Framer"
sketch = Framer.Importer.load("imported/PRX_Final_Framer@1x")

sketch.ROOT.x = 0

# Wrap the content layer within a ScrollComponent
scroll = ScrollComponent.wrap(sketch.Dashboard)
scroll.scrollHorizontal = false
animationA = new Animation
	layer: sketch.Page_Content	
	properties:
		x: 500
	curve: "ease-in-out"
	time: 0.25
animationB = new Animation
	layer: sketch.Page_Content	
	properties:
		x: 377
	curve: "ease-in-out"
	time: 0.25
	
# Make timeline initially invisible
sketch.Timeline.visible = false
sketch.Hide_Timeline.visible = false

# Interaction for clicking on timeline bar 
sketch.View_Timeline.onClick ->
	sketch.Timeline.visible = true
	sketch.Hide_Timeline.visible = true
	sketch.View_Timeline.visible = false
	animationA.start()

sketch.Hide_Timeline.onClick ->
	sketch.Timeline.visible = false
	sketch.Hide_Timeline.visible = false
	sketch.View_Timeline.visible = true
	animationB.start()
	




