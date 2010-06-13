package
{
	
	import controller.AddResultCommand;
	
	import models.BenchmarkResults;
	
	import org.robotlegs.mvcs.SignalContext;
	
	import signals.MediatorRegisteredSignal;
	import signals.ResultsUpdatedSignal;
	
	import views.ITestView;
	import views.TestView;
	import views.TestView2;
	import views.TestViewMediator;
	
	public class RobotlegsBenchmarkerContext extends SignalContext
	{
				
		override public function startup():void
		{

			injector.mapSingleton(BenchmarkResults);
			injector.mapSingleton(ResultsUpdatedSignal);
			
			signalCommandMap.mapSignalClass(MediatorRegisteredSignal,AddResultCommand);
			
			mediatorMap.mapView(TestView2,TestViewMediator);
			mediatorMap.mapView(RobotlegsBenchmarker,RobotlegsBenchmarkerMediator);
			
		}
		
	}
}