.class Lcom/android/server/enterprise/DeviceInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 636
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #calls: Lcom/android/server/enterprise/DeviceInfo;->registerCarrierNetworkListener()V
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$000(Lcom/android/server/enterprise/DeviceInfo;)V

    .line 638
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #calls: Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesInit()V
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$100(Lcom/android/server/enterprise/DeviceInfo;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #calls: Lcom/android/server/enterprise/DeviceInfo;->deregisterCarrierNetworkListener()V
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$200(Lcom/android/server/enterprise/DeviceInfo;)V

    .line 642
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    const/16 v1, 0xa

    #setter for: Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I
    invoke-static {v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->access$302(Lcom/android/server/enterprise/DeviceInfo;I)I

    .line 643
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$500(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/DeviceInfo;->access$400(Lcom/android/server/enterprise/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 644
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$600(Lcom/android/server/enterprise/DeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$500(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/DeviceInfo;->access$400(Lcom/android/server/enterprise/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
