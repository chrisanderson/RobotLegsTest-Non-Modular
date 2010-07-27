package shell
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.SignalContext;
	
	import shell.view.ShellViewMediator;
	
	public class ShellContext extends SignalContext
	{		
		override public function startup():void
		{
			//fix here map commands etc
			
			//
			mediatorMap.mapView(Shell, ShellViewMediator);
			
			super.startup();
		}
	}
}