.class Lcom/android/settings/RadioInfo$3;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2000(Lcom/android/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2300(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2200(Lcom/android/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2500(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2400(Lcom/android/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    return-void
.end method
