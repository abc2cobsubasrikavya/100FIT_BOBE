/*
 * This is Os_Metrics.h, auto-generated for:
 *   Project: project
 *   Target:  RH850GHS
 *   Variant: P1HC
 *   Version: 5.0.38
 *   [$UKS 1977]
 */
#ifndef OS_METRICS_H
#define OS_METRICS_H

/*
 * The code in this file is used to support the collection of OS metrics at run-time.
 * To keep the run-time overhead low, range checks are not performed when incrementing
 * the counters. The 'Collect OS usage metrics' option should only be used during testing
 * and must not be used in production systems.
 *
 * APIs:
 *   0: None
 *   1: ActivateTask
 *   2: AdvanceCounter
 *   3: CancelAlarm
 *   4: CallTrustedFunction
 *   5: CheckISRMemoryAccess
 *   6: CheckObjectAccess
 *   7: CheckObjectOwnership
 *   8: CheckTaskMemoryAccess
 *   9: ChainTask
 *  10: ClearEvent
 *  11: ControlIdle
 *  12: CurrentIdleMode
 *  13: DisableAllInterrupts
 *  14: EnableAllInterrupts
 *  15: GetActiveApplicationMode
 *  16: GetAlarm
 *  17: GetAlarmBase
 *  18: GetApplicationID
 *  19: GetCurrentApplicationID
 *  20: GetCounterValue
 *  21: GetElapsedCounterValue
 *  22: GetEvent
 *  23: GetISRID
 *  24: GetResource
 *  25: GetScheduleTableStatus
 *  26: GetTaskID
 *  27: GetTaskState
 *  28: GetVersionInfo
 *  29: IncrementCounter
 *  30: NextScheduleTable
 *  31: GetCurrentIMask
 *  32: GetCurrentTPL
 *  33: GetExecutionTime
 *  34: GetISRMaxExecutionTime
 *  35: GetTaskMaxExecutionTime
 *  36: ResetISRMaxExecutionTime
 *  37: ResetTaskMaxExecutionTime
 *  38: GetElapsedTime
 *  39: GetTaskElapsedTime
 *  40: GetISRElapsedTime
 *  41: GetIdleElapsedTime
 *  42: ResetTaskElapsedTime
 *  43: ResetISRElapsedTime
 *  44: ResetIdleElapsedTime
 *  45: GetStackSize
 *  46: GetStackUsage
 *  47: GetStackValue
 *  48: GetISRMaxStackUsage
 *  49: GetTaskMaxStackUsage
 *  50: ResetISRMaxStackUsage
 *  51: ResetTaskMaxStackUsage
 *  52: ReleaseResource
 *  53: ResumeAllInterrupts
 *  54: ResumeOSInterrupts
 *  55: Schedule
 *  56: SetEvent
 *  57: SetAbsAlarm
 *  58: SetRelAlarm
 *  59: ShutdownOS
 *  60: StartOS
 *  61: StartScheduleTableAbs
 *  62: StartScheduleTableRel
 *  63: StartScheduleTableSynchron
 *  64: SyncScheduleTable
 *  65: SyncScheduleTableRel
 *  66: SetScheduleTableAsync
 *  67: StopScheduleTable
 *  68: SuspendAllInterrupts
 *  69: SuspendOSInterrupts
 *  70: TerminateTask
 *  71: WaitEvent
 *  72: EnableInterruptSource
 *  73: DisableInterruptSource
 *  74: ClearPendingInterrupt
 *  75: ModifyPeripheral32
 *  76: ReadPeripheral32
 *  77: WritePeripheral32
 *  78: ModifyPeripheral16
 *  79: ReadPeripheral16
 *  80: WritePeripheral16
 *  81: Restart
 *  82: GetTaskActivationTime
 *  83: TerminateApplication
 *  84: ModifyPeripheral8
 *  85: ReadPeripheral8
 *  86: WritePeripheral8
 *  87: AllowAccess
 *  88: GetApplicationState
 *  89: GetNumberOfActivatedCores
 *  90: ShutdownAllCores
 *  91: StartCore
 *  92: GetSpinlock
 *  93: ReleaseSpinlock
 *  94: TryToGetSpinlock
 *  95: GetSpinlockInfo
 *  96: ResetSpinlockInfo
 *  97: TimingFaultDetected
 *
 * TASKs:
 *   0: TaskBackground
 *   1: TaskBackgroundCore0
 *   2: TaskBswCrypto
 *   3: TaskNvDataHandle
 *   4: Task100ms
 *   5: TaskBswModeSwitchEvent
 *   6: Task_Autosar_RTE_100ms
 *   7: TaskMemStack_10ms
 *   8: Task_Autosar_RTE_10ms
 *   9: TaskBswCyclic
 *  10: TaskBswCyclicHwLibCore
 *  11: Task10ms
 *  12: Task_Autosar_RTE_5ms
 *  13: Task5ms
 *  14: Task5ms_PartTwo_HwLib
 *  15: TaskBswCom
 *  16: Task2ms
 *  17: TaskBswBusData
 *  18: Task1ms_PartFive
 *  19: Task1ms_PartFour_HwLib
 *  20: Task1ms_PartThree
 *  21: Task1ms_PartTwo_HwLib
 *  22: Task1ms
 *  23: TaskOem1_Init
 *  24: TaskOem2_Init
 *  25: TaskOem2_1ms
 *  26: TaskOem1_1ms
 *  27: TaskInit
 *  28: TaskInitCore0
 *
 * ISRs:
 *   0: Os_1ms_Tick
 *   1: adAD0Finished
 *
 * CAT1_ISRs:
 *   0: SoftwareInterrupt1
 *   1: TimingProt_Interrupt
 *   2: b_T1_ExceptionHandlerAsm
 *
 * STATUS:
 *   0: E_OK
 *   1: E_OS_ACCESS
 *   2: E_OS_CALLEVEL
 *   3: E_OS_ID
 *   4: E_OS_LIMIT
 *   5: E_OS_NOFUNC
 *   6: E_OS_RESOURCE
 *   7: E_OS_STATE
 *   8: E_OS_VALUE
 *   9: E_OS_SERVICEID
 *  10: E_OS_ILLEGAL_ADDRESS
 *  11: E_OS_MISSINGEND
 *  12: E_OS_DISABLEDINT
 *  13: E_OS_STACKFAULT
 *  14: E_OS_PROTECTION_MEMORY
 *  15: E_OS_PROTECTION_TIME
 *  16: E_OS_PROTECTION_ARRIVAL
 *  17: E_OS_PROTECTION_LOCKED
 *  18: E_OS_PROTECTION_EXCEPTION
 *  19: E_OS_CORE
 *  20: E_OS_SPINLOCK
 *  21: E_OS_INTERFERENCE_DEADLOCK
 *  22: E_OS_NESTING_DEADLOCK
 *  23: E_OS_PARAM_POINTER
 *  24: E_OS_SYS_NO_RESTART
 *  25: E_OS_SYS_RESTART
 *  26: E_OS_SYS_OVERRUN
 *  27: E_OS_SYS_XCORE_QFULL
 *  28: E_OS_SYS_ERROR_LIMIT
 *
 */
typedef unsigned int Os_CountType;

typedef struct {
  Os_CountType Os_APIs[98U]; /* Index is APIs */
  Os_CountType Os_TaskActivations[29U]; /* Index is TASKs */
  Os_CountType Os_TaskStarts[29U]; /* Index is TASKs */
  Os_CountType Os_TaskCrossCore[29U]; /* Index is TASKs */
  Os_CountType Os_ISRStarts[2U]; /* Index is ISRs */
  Os_CountType Os_CAT1ISRStarts[3U]; /* Index is CAT1_ISRs */
  Os_CountType Os_Errors[29U]; /* Index is STATUS */
  Os_CountType Os_CrossCoreCheck; /* Calls to Os_CrossCoreCheck on this core */
  Os_CountType Os_lock_taskaccessGet; /* Get internal task lock on this core */
  Os_CountType Os_lock_alarmaccessGet; /* Get internal counter/alarm lock on this core */
  Os_CountType Os_lock_spinlockinfoGet; /* Get internal SpinlockInfo lock on this core */
  Os_CountType Os_lock_iocaccessGet; /* Get internal IOC lock on this core */
  Os_CountType Os_lock_tracelockGet; /* Get internal trace lock on this core */
  Os_CountType Os_lock_taskaccessRetry; /* Retry internal task lock on this core */
  Os_CountType Os_lock_alarmaccessRetry; /* Retry internal counter/alarm lock on this core */
  Os_CountType Os_lock_spinlockinfoRetry; /* Retry internal SpinlockInfo lock on this core */
  Os_CountType Os_lock_iocaccessRetry; /* Retry internal IOC lock on this core */
  Os_CountType Os_lock_tracelockRetry; /* Retry internal trace lock on this core */
  Os_CountType Os_lock_apperrorhookGet;  /* Get app errorhook lock on this core */
  Os_CountType Os_lock_apperrorhookRetry;  /* Get app errorhook lock on this core */
  Os_CountType Os_User[10U]; /* Index is user-defined */
} Os_MetricsType; /* [$UKS 1974] */

/* Use this macro to conditionally compile code for metrics */
#define OS_METRICS_ENABLED
#define OS_COUNT_SoftwareInterrupt1() (Os_AnyCoreInfo[Os_TgtCoreID()].Metrics.Os_CAT1ISRStarts[0] += 1U) /* Place OS_COUNT_SoftwareInterrupt1(); in CAT1 ISR SoftwareInterrupt1 */
#define OS_COUNT_TimingProt_Interrupt() (Os_AnyCoreInfo[Os_TgtCoreID()].Metrics.Os_CAT1ISRStarts[1] += 1U) /* Place OS_COUNT_TimingProt_Interrupt(); in CAT1 ISR TimingProt_Interrupt */
#define OS_COUNT_b_T1_ExceptionHandlerAsm() (Os_AnyCoreInfo[Os_TgtCoreID()].Metrics.Os_CAT1ISRStarts[2] += 1U) /* Place OS_COUNT_b_T1_ExceptionHandlerAsm(); in CAT1 ISR b_T1_ExceptionHandlerAsm */
extern void Os_Metrics_Reset(void);
extern void Os_Metrics_User(Os_CountType index);
#define OS_COUNT_USER_0() Os_Metrics_User(0)
#define OS_COUNT_USER_1() Os_Metrics_User(1)
#define OS_COUNT_USER_2() Os_Metrics_User(2)
#define OS_COUNT_USER_3() Os_Metrics_User(3)
#define OS_COUNT_USER_4() Os_Metrics_User(4)
#define OS_COUNT_USER_5() Os_Metrics_User(5)
#define OS_COUNT_USER_6() Os_Metrics_User(6)
#define OS_COUNT_USER_7() Os_Metrics_User(7)
#define OS_COUNT_USER_8() Os_Metrics_User(8)
#define OS_COUNT_USER_9() Os_Metrics_User(9)

#endif /* OS_METRICS_H */
