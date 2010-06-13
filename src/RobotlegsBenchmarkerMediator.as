package
{
	import org.robotlegs.mvcs.Mediator;
	import signals.ResultsUpdatedSignal;
	
	public class RobotlegsBenchmarkerMediator extends Mediator
	{
		
		[Inject] public var resultsUpdatedSignal:ResultsUpdatedSignal;
		[Inject] public var view:RobotlegsBenchmarker;
				
		override public function onRegister():void
		{
			resultsUpdatedSignal.add(onResultsUpdated);			
		}
		
		private function onResultsUpdated(numSamples:int,min:int,max:int,ave:Number):void
		{
			view.numSamples.text = numSamples.toString();
			view.maxValue.text = max.toString();
			view.minValue.text = min.toString();
			view.average.text = ave.toString().substr(0,8);
		}
	}
}