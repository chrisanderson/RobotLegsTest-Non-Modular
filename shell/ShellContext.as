package shell
{
	import org.robotlegs.mvcs.SignalContext;
	
	import common.controller.signals.MessageSentSignal;
	import shell.view.ShellViewMediator;
	import viewOne.view.ViewOneMediator;
	import viewTwo.view.ViewTwoMediator;
	import viewOne.view.ViewOne;
	import viewTwo.view.ViewTwo;
	
	public class ShellContext extends SignalContext
	{		
		override public function startup():void
		{
			//
			
			//signals
			injector.mapSingleton(MessageSentSignal);
			
			//mediators
			mediatorMap.mapView(Shell, ShellViewMediator);
			mediatorMap.createMediator(contextView);
			
			mediatorMap.mapView(ViewOne, ViewOneMediator);
			mediatorMap.mapView(ViewTwo, ViewTwoMediator);
		}
	}
}