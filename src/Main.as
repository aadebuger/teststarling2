package 
{
//	import flash.display.Sprite;
//	import flash.events.Event;
	 import flash.display.Sprite; 
	 import flash.display.StageAlign; 
	 import flash.display.StageScaleMode;
	 import starling.core.Starling; 
	
	/**
	 * ...
	 * @author zhv
	 */
	 [SWF(width="1280", height="752", frameRate="60", backgroundColor="#002143")]
	public class Main extends Sprite 
	{
		
		private var mStarling:Starling;
		
		public function Main():void { 
			// stats class for fps 
			// addChild ( new Stats() ); 
			stage.align = StageAlign.TOP_LEFT; 
			stage.scaleMode = StageScaleMode.NO_SCALE; 
			// create our Starling instance 
			mStarling = new Starling(Game, stage); 
			// set anti-aliasing (higher is better quality but slower performance) 
			mStarling.antiAliasing = 1; 
			// start it! m
			mStarling.start(); 
			mStarling.showStatsAt();
			}
			
		
		
	}
	
}