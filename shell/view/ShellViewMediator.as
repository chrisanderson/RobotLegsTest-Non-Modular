package shell.view
{
	import common.controller.signals.MessageSentSignal;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ShellViewMediator extends Mediator
	{
		[Inject]
		public var view:Shell;
		
		[Inject]
		public var signalViewOneMessageSent:MessageSentSignal;
		
		override public function onRegister():void
		{
			view.signalMessageSet.add(_onMessageSet);
		}
		
		private function _onMessageSet(value:String):void
		{
			signalViewOneMessageSent.dispatch(value);
		}
	}
}