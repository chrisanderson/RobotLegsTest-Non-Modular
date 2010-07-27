package shell.view
{
	import org.robotlegs.mvcs.Mediator;
	
	public class ShellViewMediator extends Mediator
	{
		private var _view:Shell;
		
		public function ShellViewMediator(view:Shell)
		{
			_view = view;
		}
		
		override public function onRegister():void
		{
			trace(this + " onRegister()");
		}
	}
}