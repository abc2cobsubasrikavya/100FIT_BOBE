/*
 * This is Os_Cfg.h, auto-generated for:
 *   Project: project
 *   Target:  RH850GHS
 *   Variant: P1HC
 *   Version: 5.0.38
 *   [$UKS 650]
 */
#ifndef OS_CFG_H
#define OS_CFG_H
#include "Os_Safe_Cfg.h"
/* -------- Time Monitoring --------- */
#define OS_TIME_MONITORING  /* [$UKS 959] */
/* -------- Time Recording --------- */
#define OS_ELAPSED_TIME_RECORDING
/* -------- Activation Monitoring --------- */
#define OS_ACTIVATION_MONITORING  /* [$UKS 1282] */

/* -------- AppMode declarations --------- */

/* ----- OS-Application declarations ----- */
#define AswAndBsw ((ApplicationType)1U) /* [$UKS 412] */
#define BswOnHwLibCore ((ApplicationType)2U) /* [$UKS 412] */
#define HwLib ((ApplicationType)3U) /* [$UKS 412] */
#define OemBlackbox1 ((ApplicationType)4U) /* [$UKS 412] */
#define OemBlackbox2 ((ApplicationType)5U) /* [$UKS 412] */

/* ----- PeripheralArea declarations ----- */

/* ----- Spinlock declarations ----- */

/* -------- Event declarations --------- */

/* -------- Task declarations --------- */
#define TaskBackground (&Os_const_tasks1[0])
#define OS_CORE_FOR_TaskBackground (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskBackground (0U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskBackground (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskBackground (0U) /* [$UKS 2185] */
DeclareTask(TaskBackground)
#define TaskBackgroundCore0 (&Os_const_tasks0[0])
#define OS_CORE_FOR_TaskBackgroundCore0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskBackgroundCore0 (0U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskBackgroundCore0 (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskBackgroundCore0 (1U) /* [$UKS 2185] */
DeclareTask(TaskBackgroundCore0)
#define TaskBswCrypto (&Os_const_tasks1[1])
#define OS_CORE_FOR_TaskBswCrypto (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskBswCrypto (1U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskBswCrypto (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskBswCrypto (2U) /* [$UKS 2185] */
DeclareTask(TaskBswCrypto)
#define TaskNvDataHandle (&Os_const_tasks1[2])
#define OS_CORE_FOR_TaskNvDataHandle (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskNvDataHandle (2U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskNvDataHandle (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskNvDataHandle (3U) /* [$UKS 2185] */
DeclareTask(TaskNvDataHandle)
#define Task100ms (&Os_const_tasks1[3])
#define OS_CORE_FOR_Task100ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task100ms (3U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task100ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task100ms (4U) /* [$UKS 2185] */
DeclareTask(Task100ms)
#define TaskBswModeSwitchEvent (&Os_const_tasks1[4])
#define OS_CORE_FOR_TaskBswModeSwitchEvent (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskBswModeSwitchEvent (4U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskBswModeSwitchEvent (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskBswModeSwitchEvent (5U) /* [$UKS 2185] */
DeclareTask(TaskBswModeSwitchEvent)
#define Task_Autosar_RTE_100ms (&Os_const_tasks1[5])
#define OS_CORE_FOR_Task_Autosar_RTE_100ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task_Autosar_RTE_100ms (5U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task_Autosar_RTE_100ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task_Autosar_RTE_100ms (6U) /* [$UKS 2185] */
DeclareTask(Task_Autosar_RTE_100ms)
#define TaskMemStack_10ms (&Os_const_tasks1[6])
#define OS_CORE_FOR_TaskMemStack_10ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskMemStack_10ms (6U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskMemStack_10ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskMemStack_10ms (7U) /* [$UKS 2185] */
DeclareTask(TaskMemStack_10ms)
#define Task_Autosar_RTE_10ms (&Os_const_tasks1[7])
#define OS_CORE_FOR_Task_Autosar_RTE_10ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task_Autosar_RTE_10ms (7U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task_Autosar_RTE_10ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task_Autosar_RTE_10ms (8U) /* [$UKS 2185] */
DeclareTask(Task_Autosar_RTE_10ms)
#define TaskBswCyclic (&Os_const_tasks1[8])
#define OS_CORE_FOR_TaskBswCyclic (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskBswCyclic (8U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskBswCyclic (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskBswCyclic (9U) /* [$UKS 2185] */
DeclareTask(TaskBswCyclic)
#define TaskBswCyclicHwLibCore (&Os_const_tasks0[1])
#define OS_CORE_FOR_TaskBswCyclicHwLibCore (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskBswCyclicHwLibCore (1U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskBswCyclicHwLibCore (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskBswCyclicHwLibCore (10U) /* [$UKS 2185] */
DeclareTask(TaskBswCyclicHwLibCore)
#define Task10ms (&Os_const_tasks1[9])
#define OS_CORE_FOR_Task10ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task10ms (9U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task10ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task10ms (11U) /* [$UKS 2185] */
DeclareTask(Task10ms)
#define Task_Autosar_RTE_5ms (&Os_const_tasks1[10])
#define OS_CORE_FOR_Task_Autosar_RTE_5ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task_Autosar_RTE_5ms (10U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task_Autosar_RTE_5ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task_Autosar_RTE_5ms (12U) /* [$UKS 2185] */
DeclareTask(Task_Autosar_RTE_5ms)
#define Task5ms (&Os_const_tasks1[11])
#define OS_CORE_FOR_Task5ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task5ms (11U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task5ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task5ms (13U) /* [$UKS 2185] */
DeclareTask(Task5ms)
#define Task5ms_PartTwo_HwLib (&Os_const_tasks0[2])
#define OS_CORE_FOR_Task5ms_PartTwo_HwLib (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task5ms_PartTwo_HwLib (2U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task5ms_PartTwo_HwLib (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task5ms_PartTwo_HwLib (14U) /* [$UKS 2185] */
DeclareTask(Task5ms_PartTwo_HwLib)
#define TaskBswCom (&Os_const_tasks1[12])
#define OS_CORE_FOR_TaskBswCom (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskBswCom (12U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskBswCom (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskBswCom (15U) /* [$UKS 2185] */
DeclareTask(TaskBswCom)
#define Task2ms (&Os_const_tasks1[13])
#define OS_CORE_FOR_Task2ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task2ms (13U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task2ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task2ms (16U) /* [$UKS 2185] */
DeclareTask(Task2ms)
#define TaskBswBusData (&Os_const_tasks1[14])
#define OS_CORE_FOR_TaskBswBusData (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskBswBusData (14U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskBswBusData (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskBswBusData (17U) /* [$UKS 2185] */
DeclareTask(TaskBswBusData)
#define Task1ms_PartFive (&Os_const_tasks1[15])
#define OS_CORE_FOR_Task1ms_PartFive (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task1ms_PartFive (15U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task1ms_PartFive (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task1ms_PartFive (18U) /* [$UKS 2185] */
DeclareTask(Task1ms_PartFive)
#define Task1ms_PartFour_HwLib (&Os_const_tasks0[3])
#define OS_CORE_FOR_Task1ms_PartFour_HwLib (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task1ms_PartFour_HwLib (3U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task1ms_PartFour_HwLib (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task1ms_PartFour_HwLib (19U) /* [$UKS 2185] */
DeclareTask(Task1ms_PartFour_HwLib)
#define Task1ms_PartThree (&Os_const_tasks1[16])
#define OS_CORE_FOR_Task1ms_PartThree (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task1ms_PartThree (16U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task1ms_PartThree (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task1ms_PartThree (20U) /* [$UKS 2185] */
DeclareTask(Task1ms_PartThree)
#define Task1ms_PartTwo_HwLib (&Os_const_tasks0[4])
#define OS_CORE_FOR_Task1ms_PartTwo_HwLib (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task1ms_PartTwo_HwLib (4U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task1ms_PartTwo_HwLib (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task1ms_PartTwo_HwLib (21U) /* [$UKS 2185] */
DeclareTask(Task1ms_PartTwo_HwLib)
#define Task1ms (&Os_const_tasks1[17])
#define OS_CORE_FOR_Task1ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_Task1ms (17U) /* [$UKS 2007] */
#define OS_IMASK_FOR_Task1ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Task1ms (22U) /* [$UKS 2185] */
DeclareTask(Task1ms)
#define TaskOem1_Init (&Os_const_tasks1[18])
#define OS_CORE_FOR_TaskOem1_Init (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskOem1_Init (18U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskOem1_Init (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskOem1_Init (23U) /* [$UKS 2185] */
DeclareTask(TaskOem1_Init)
#define TaskOem2_Init (&Os_const_tasks1[19])
#define OS_CORE_FOR_TaskOem2_Init (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskOem2_Init (19U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskOem2_Init (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskOem2_Init (24U) /* [$UKS 2185] */
DeclareTask(TaskOem2_Init)
#define TaskOem2_1ms (&Os_const_tasks1[20])
#define OS_CORE_FOR_TaskOem2_1ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskOem2_1ms (20U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskOem2_1ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskOem2_1ms (25U) /* [$UKS 2185] */
DeclareTask(TaskOem2_1ms)
#define TaskOem1_1ms (&Os_const_tasks1[21])
#define OS_CORE_FOR_TaskOem1_1ms (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskOem1_1ms (21U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskOem1_1ms (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskOem1_1ms (26U) /* [$UKS 2185] */
DeclareTask(TaskOem1_1ms)
#define TaskInit (&Os_const_tasks1[22])
#define OS_CORE_FOR_TaskInit (1U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskInit (22U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskInit (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskInit (27U) /* [$UKS 2185] */
DeclareTask(TaskInit)
#define TaskInitCore0 (&Os_const_tasks0[5])
#define OS_CORE_FOR_TaskInitCore0 (0U) /* [$UKS 1909] */
#define OS_TPL_FOR_TaskInitCore0 (5U) /* [$UKS 2007] */
#define OS_IMASK_FOR_TaskInitCore0 (0x0000U) /* [$UKS 2009] */
#define OS_INDEX_FOR_TaskInitCore0 (28U) /* [$UKS 2185] */
DeclareTask(TaskInitCore0)
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_TPL_FOR_TASK, OS_IMASK_FOR_TASK) */
/* [MISRA 2012 Rule 20.10] */ /*lint -estring(9024, OS_TPL_FOR_TASK) */
#define OS_TPL_FOR_TASK(n) OS_TPL_FOR_##n  /* [$UKS 2008] */
/* [MISRA 2012 Rule 20.10] */ /*lint -estring(9024, OS_IMASK_FOR_TASK) */
#define OS_IMASK_FOR_TASK(n) OS_IMASK_FOR_##n  /* [$UKS 2010] */
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_CORE_FOR_TASK) */
#define OS_CORE_FOR_TASK(t) (t)->core_id /* [$UKS 1921] */

/* -------- ISR declarations --------- */
#define Os_1ms_Tick (&Os_const_isrs[0U])
#define OS_IMASK_FOR_Os_1ms_Tick (0xFFF8U) /* [$UKS 2009] */
#define OS_INDEX_FOR_Os_1ms_Tick (0U) /* [$UKS 2186] */
#define OS_CORE_FOR_Os_1ms_Tick (1U) /* [$UKS 1909] */
DeclareISR(Os_1ms_Tick)
#define adAD0Finished (&Os_const_isrs[1U])
#define OS_IMASK_FOR_adAD0Finished (0xFFFCU) /* [$UKS 2009] */
#define OS_INDEX_FOR_adAD0Finished (1U) /* [$UKS 2186] */
#define OS_CORE_FOR_adAD0Finished (0U) /* [$UKS 1909] */
DeclareISR(adAD0Finished)
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_CORE_FOR_ISR) */
/* [MISRA 2012 Rule 20.10] */ /*lint -estring(9024, OS_CORE_FOR_ISR) */
#define OS_CORE_FOR_ISR(i) OS_CORE_FOR_##i /* [$UKS 1922] */
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, OS_IMASK_FOR_ISR) */
/* [MISRA 2012 Rule 20.10] */ /*lint -estring(9024, OS_IMASK_FOR_ISR) */
#define OS_IMASK_FOR_ISR(n) OS_IMASK_FOR_##n  /* [$UKS 2011] */

/* -------- Resource declarations --------- */
#define RTE_RESOURCE_OS_APP_BswOnHwLibCore (&Os_const_resources[0U])
DeclareResource(RTE_RESOURCE_OS_APP_BswOnHwLibCore)
#define RTE_RESOURCE_OS_APP_HwLib (&Os_const_resources[1U])
DeclareResource(RTE_RESOURCE_OS_APP_HwLib)
#define RTE_RESOURCE_OS_APP_OemBlackbox2 (&Os_const_resources[2U])
DeclareResource(RTE_RESOURCE_OS_APP_OemBlackbox2)
#define RTE_RESOURCE_OS_APP_OemBlackbox1 (&Os_const_resources[3U])
DeclareResource(RTE_RESOURCE_OS_APP_OemBlackbox1)
#define RTE_RESOURCE_OS_APP_AswAndBsw (&Os_const_resources[4U])
DeclareResource(RTE_RESOURCE_OS_APP_AswAndBsw)
#define Os_Core0_RES_SCHEDULER (&Os_const_resources[5U])
DeclareResource(Os_Core0_RES_SCHEDULER)
#define Os_Core1_RES_SCHEDULER (&Os_const_resources[6U])
DeclareResource(Os_Core1_RES_SCHEDULER)
#define RES_SCHEDULER (Os_const_coreconfiguration[GetCoreID()].Os_Res_Scheduler)

/* -------- Counter declarations --------- */

/* -------- Alarm declaration --------- */

/* -------- ScheduleTable declaration --------- */

/* -------- Tracepoint declarations --------- */
#define OSApp_AswAndBsw (1U)
#define OSApp_BswOnHwLibCore (2U)
#define OSApp_HwLib (3U)
#define OSApp_OemBlackbox1 (4U)
#define OSApp_OemBlackbox2 (5U)

/* -------- TaskTracepoint declarations --------- */

/* -------- Interval declarations --------- */

/* -------- Filtered APIs --------- */
#define Os_LogTracepoint(TpointID,Category) /* never */
#define Os_LogTracepointValue(TpointID,Value,Category) /* never */
#define Os_LogTracepointData(TpointID,Data,Length,Category) /* never */
#define Os_LogTaskTracepoint(TTpointID,Category) /* never */
#define Os_LogTaskTracepointValue(TTpointID,Value,Category) /* never */
#define Os_LogTaskTracepointData(TTpointID,Data,Length,Category) /* never */
#define Os_LogIntervalStart(IntervalID,Category) /* never */
#define Os_LogIntervalStartValue(IntervalID,Value,Category) /* never */
#define Os_LogIntervalStartData(IntervalID,Data,Length,Category) /* never */
#define Os_LogIntervalEnd(IntervalID,Category) /* never */
#define Os_LogIntervalEndValue(IntervalID,Value,Category) /* never */
#define Os_LogIntervalEndData(IntervalID,Data,Length,Category) /* never */
#ifndef OS_TRACE_NAMESPACE_PURE /* [$UKS 1154] */
/* [MISRA 2012 Dir 4.9] */ /*lint -estring(9026, LogTrace*, LogTaskTrace*, LogInterval*) */  #define LogTracepoint(TpointID,Category) Os_LogTracepoint(TpointID,Category)
  #define LogTracepointValue(TpointID,Value,Category) Os_LogTracepointValue(TpointID,Value,Category)
  #define LogTracepointData(TpointID,Data,Length,Category) Os_LogTracepointData(TpointID,Data,Length,Category)
  #define LogTaskTracepoint(TTpointID,Category) Os_LogTaskTracepoint(TTpointID,Category)
  #define LogTaskTracepointValue(TTpointID,Value,Category) Os_LogTaskTracepointValue(TTpointID,Value,Category)
  #define LogTaskTracepointData(TTpointID,Data,Length,Category) Os_LogTaskTracepointData(TTpointID,Data,Length,Category)
  #define LogIntervalStart(IntervalID,Category) Os_LogIntervalStart(IntervalID,Category)
  #define LogIntervalStartValue(IntervalID,Value,Category) Os_LogIntervalStartValue(IntervalID,Value,Category)
  #define LogIntervalStartData(IntervalID,Data,Length,Category) Os_LogIntervalStartData(IntervalID,Data,Length,Category)
  #define LogIntervalEnd(IntervalID,Category) Os_LogIntervalEnd(IntervalID,Category)
  #define LogIntervalEndValue(IntervalID,Value,Category) Os_LogIntervalEndValue(IntervalID,Value,Category)
  #define LogIntervalEndData(IntervalID,Data,Length,Category) Os_LogIntervalEndData(IntervalID,Data,Length,Category)
#endif

#define OS_IMASK_FOR_SoftwareInterrupt1 (0xFFFEU) /* [$UKS 2009] */
#define Os_Cat1_SoftwareInterrupt1 (33U)
#define OS_CORE_FOR_SoftwareInterrupt1 (1U) /* [$UKS 1909] */
#define OS_IMASK_FOR_TimingProt_Interrupt (0xFFFFU) /* [$UKS 2009] */
#define Os_Cat1_TimingProt_Interrupt (34U)
#define OS_CORE_FOR_TimingProt_Interrupt (1U) /* [$UKS 1909] */
#define OS_IMASK_FOR_b_T1_ExceptionHandlerAsm (0xFFFFU) /* [$UKS 2009] */
#define Os_Cat1_b_T1_ExceptionHandlerAsm (35U)
#define OS_CORE_FOR_b_T1_ExceptionHandlerAsm (1U) /* [$UKS 1909] */
/* [MISRA 2012 Rule 1.3] */ /*lint -estring(9023, Os_LogCat1ISRStart) */
/* [MISRA 2012 Rule 20.10] */ /*lint -esym(9024, Os_LogCat1ISRStart) */
#define Os_LogCat1ISRStart(IsrId)  /* [$UKS 1036] [$UKS 1037] [$UKS 1177] */
/* [MISRA 2012 Rule 1.3] */ /*lint -estring(9023, Os_LogCat1ISREnd) */
/* [MISRA 2012 Rule 20.10] */ /*lint -esym(9024, Os_LogCat1ISREnd) */
#define Os_LogCat1ISREnd(IsrId)  /* [$UKS 1038] [$UKS 1039] [$UKS 1178] */

#ifndef OS_TRACE_NAMESPACE_PURE /* [$UKS 1154] */
  #define LogCat1ISRStart Os_LogCat1ISRStart
  #define LogCat1ISREnd Os_LogCat1ISREnd
#endif
#endif /* OS_CFG_H */
