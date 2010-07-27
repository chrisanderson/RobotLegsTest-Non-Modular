package shell
{
	import org.robotlegs.mvcs.SignalContext;
	
	import shell.view.ShellViewMediator;
	import viewOne.view.ViewOneMediator;
	import viewTwo.view.ViewTwoMediator;
	
	public class ShellContext extends SignalContext
	{		
		override public function startup():void
		{
			//fix here map commands etc
			
			//
			mediatorMap.mapView(Shell, ShellViewMediator);
			mediatorMap.mapView(ViewOne, ViewOneMediator);
			mediatorMap.mapView(ViewTwo, ViewTwoMediator);
			
			super.startup();
		}
	}
}