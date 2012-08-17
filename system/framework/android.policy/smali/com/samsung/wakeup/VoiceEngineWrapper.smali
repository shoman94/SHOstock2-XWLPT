.class public Lcom/samsung/wakeup/VoiceEngineWrapper;
.super Ljava/lang/Object;
.source "VoiceEngineWrapper.java"


# static fields
.field private static uniqueInstance:Lcom/samsung/wakeup/VoiceEngine;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/wakeup/VoiceEngine;
    .locals 2

    .prologue
    .line 10
    const-class v1, Lcom/samsung/wakeup/VoiceEngineWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/wakeup/VoiceEngineWrapper;->uniqueInstance:Lcom/samsung/wakeup/VoiceEngine;

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Lcom/samsung/wakeup/VoiceEngine;->init()V

    .line 12
    new-instance v0, Lcom/samsung/wakeup/VoiceEngine;

    invoke-direct {v0}, Lcom/samsung/wakeup/VoiceEngine;-><init>()V

    sput-object v0, Lcom/samsung/wakeup/VoiceEngineWrapper;->uniqueInstance:Lcom/samsung/wakeup/VoiceEngine;

    .line 15
    :cond_0
    sget-object v0, Lcom/samsung/wakeup/VoiceEngineWrapper;->uniqueInstance:Lcom/samsung/wakeup/VoiceEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
