
package 
{ 
	import starling.display.Quad; 
	import starling.display.Sprite; 
	import starling.events.Event; 
	import starling.events.Touch;
 import starling.events.TouchEvent;
 import starling.events.Event;
 import starling.events.TouchPhase;
 import flash.geom.Point;
	public class Game extends Sprite 
	{ private var q:Quad; 
	public function Game() 
	{ 
		addEventListener(Event.ADDED_TO_STAGE, onAdded); 
		} 
		private function onAdded ( e:Event ):void 
		{ 
			q = new Quad(200, 200); 
			q.setVertexColor(0, 0x000000); 
			q.setVertexColor(1, 0xAA0000); 
			q.setVertexColor(2, 0x00FF00); 
			q.setVertexColor(3, 0x0000FF); 
			q.x = stage.stageWidth - q.width >> 1;
			q.y = stage.stageHeight - q.height >> 1;
			q.addEventListener(TouchEvent.TOUCH, touchHandler);
			addChild ( q ); 
			} 
		private function touchHandler(e : TouchEvent) : void 
  {
   var touch:Touch = e.getTouch(stage);
   var position:Point = touch.getLocation(stage);
   var target:Quad = e.target as Quad;
 
   if(touch.phase == TouchPhase.MOVED ){
    target.x = position.x - target.width/2;
    target.y = position.y - target.height/2;
   }
  }	
			
			} 
			}
	
