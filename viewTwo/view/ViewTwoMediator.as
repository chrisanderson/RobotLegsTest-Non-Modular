package viewTwo.view
{
	import common.controller.signals.MessageSentSignal;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ViewTwoMediator extends Mediator
	{
		[Inject]
		public var view:ViewTwo;
		
		[Inject]
		public var signalViewOneMessageSent:MessageSentSignal;
		
		override public function onRegister():void
		{
			view.signalMessageSet.add(_onMessageSet);
			
			signalViewOneMessageSent.add(_onViewOneMessageSent);
		}
		
		private function _onMessageSet(value:String):void
		{
			signalViewOneMessageSent.dispatch(value);
		}
		
		private function _onViewOneMessageSent(value:String):void
		{
			view.message = value;
		}
	}
}