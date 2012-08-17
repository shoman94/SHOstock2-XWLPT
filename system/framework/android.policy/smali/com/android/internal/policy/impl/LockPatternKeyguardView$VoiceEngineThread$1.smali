.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;
.super Landroid/os/Handler;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 211
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    :try_start_0
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Create and initialize WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    new-instance v2, Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {v2, v3}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;-><init>(Lcom/samsung/wakeup/VoiceEngineResultListener;)V

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$002(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->setContext(Landroid/content/Context;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->init()I

    .line 218
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Create and initialize WakeUpCmdRecognizer - finished"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "startVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;Z)Z

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->startVerify(I)I

    .line 229
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "startVerify WakeUpCmdRecognizer - finished"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 231
    :catch_1
    move-exception v0

    .line 232
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Error while startVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 238
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "terminateVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->stopVerify()I

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;Z)Z

    .line 241
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "terminateVerify WakeUpCmdRecognizer finished"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 243
    :catch_2
    move-exception v0

    .line 244
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Error while terminateVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "cleanUp destroy WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->stopVerify()I

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$102(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;Z)Z

    .line 254
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->destroy()V

    .line 255
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->access$002(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    .line 256
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "cleanUp destroy WakeUpCmdRecognizer - finished"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 258
    :catch_3
    move-exception v0

    .line 259
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Error while terminating WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 264
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
