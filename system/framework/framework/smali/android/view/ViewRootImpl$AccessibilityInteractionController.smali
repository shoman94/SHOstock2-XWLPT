.class final Landroid/view/ViewRootImpl$AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccessibilityInteractionController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    }
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x5


# instance fields
.field private final mPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 4898
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 4907
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;-><init>(Landroid/view/ViewRootImpl$AccessibilityInteractionController;)V

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    .line 4923
    return-void
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4
    .parameter "accessibilityId"

    .prologue
    const/4 v2, 0x0

    .line 5227
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 5228
    .local v1, root:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 5235
    :cond_0
    :goto_0
    return-object v0

    .line 5231
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 5232
    .local v0, foundView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 5233
    goto :goto_0
.end method

.method private performActionClearFocus(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 5191
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 5192
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 5199
    :cond_0
    :goto_0
    return v1

    .line 5195
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5198
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 5199
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private performActionClearSelection(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 5215
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 5216
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 5223
    :cond_0
    :goto_0
    return v1

    .line 5219
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5222
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5223
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private performActionFocus(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 5181
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 5182
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 5187
    :cond_0
    :goto_0
    return v1

    .line 5186
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 5187
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method private performActionSelect(I)Z
    .locals 3
    .parameter "accessibilityId"

    .prologue
    const/4 v1, 0x0

    .line 5203
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 5204
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 5211
    :cond_0
    :goto_0
    return v1

    .line 5207
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5210
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5211
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 3
    .parameter "accessibilityId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4961
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4962
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3fd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4963
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4964
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4965
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4970
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p4, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 4972
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 4973
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 4977
    :goto_0
    return-void

    .line 4975
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 4980
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4981
    .local v0, accessibilityId:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4982
    .local v3, interactionId:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 4985
    .local v1, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    const/4 v2, 0x0

    .line 4987
    .local v2, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 4988
    .local v4, target:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 4989
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4993
    :cond_0
    :try_start_1
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4998
    :goto_0
    return-void

    .line 4992
    .end local v4           #target:Landroid/view/View;
    :catchall_0
    move-exception v5

    .line 4993
    :try_start_2
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4996
    :goto_1
    throw v5

    .line 4994
    .restart local v4       #target:Landroid/view/View;
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v4           #target:Landroid/view/View;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public findAccessibilityNodeInfoByViewIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 3
    .parameter "viewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5003
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5004
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3fe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5005
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5006
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 5007
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p4, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 5014
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 5015
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 5019
    :goto_0
    return-void

    .line 5017
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByViewIdUiThread(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 5022
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 5023
    .local v5, viewId:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 5024
    .local v2, interactionId:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 5027
    .local v0, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    const/4 v1, 0x0

    .line 5029
    .local v1, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 5030
    .local v3, root:Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 5031
    .local v4, target:Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 5032
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 5036
    :cond_0
    :try_start_1
    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5041
    :goto_0
    return-void

    .line 5035
    .end local v3           #root:Landroid/view/View;
    .end local v4           #target:Landroid/view/View;
    :catchall_0
    move-exception v6

    .line 5036
    :try_start_2
    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5039
    :goto_1
    throw v6

    .line 5037
    .restart local v3       #root:Landroid/view/View;
    .restart local v4       #target:Landroid/view/View;
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v3           #root:Landroid/view/View;
    .end local v4           #target:Landroid/view/View;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public findAccessibilityNodeInfosByViewTextClientThread(Ljava/lang/String;IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4
    .parameter "text"
    .parameter "accessibilityViewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5047
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5048
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x3ff

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5049
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v2}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 5050
    .local v0, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iput-object p1, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 5051
    iput p2, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 5052
    iput p3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 5053
    iput-object p4, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 5054
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5059
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p5, v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, p6, v2

    if-nez v2, :cond_0

    .line 5061
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 5062
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 5066
    :goto_0
    return-void

    .line 5064
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewTextUiThread(Landroid/os/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    .line 5069
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 5070
    .local v1, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iget-object v9, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 5071
    .local v9, text:Ljava/lang/String;
    iget v0, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 5072
    .local v0, accessibilityViewId:I
    iget v7, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 5073
    .local v7, interactionId:I
    iget-object v2, v1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 5075
    .local v2, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v11, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v11, v1}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 5077
    const/4 v6, 0x0

    .line 5079
    .local v6, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    iget-object v11, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v11, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 5080
    .local v4, foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5082
    const/4 v8, 0x0

    .line 5083
    .local v8, root:Landroid/view/View;
    const/4 v11, -0x1

    if-eq v0, v11, :cond_1

    .line 5084
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    .line 5089
    :goto_0
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_2

    .line 5111
    :cond_0
    :try_start_1
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5116
    :goto_1
    return-void

    .line 5086
    :cond_1
    :try_start_2
    iget-object v11, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_0

    .line 5093
    :cond_2
    const/4 v11, 0x3

    invoke-virtual {v8, v4, v9, v11}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 5095
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-eqz v11, :cond_3

    .line 5111
    :try_start_3
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 5112
    :catch_0
    move-exception v11

    goto :goto_1

    .line 5099
    :cond_3
    :try_start_4
    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 5100
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 5102
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 5103
    .local v10, viewCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v10, :cond_5

    .line 5104
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5105
    .local v3, foundView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_4

    .line 5106
    invoke-virtual {v3}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5103
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5111
    .end local v3           #foundView:Landroid/view/View;
    :cond_5
    :try_start_5
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 5112
    :catch_1
    move-exception v11

    goto :goto_1

    .line 5110
    .end local v4           #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #i:I
    .end local v8           #root:Landroid/view/View;
    .end local v10           #viewCount:I
    :catchall_0
    move-exception v11

    .line 5111
    :try_start_6
    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 5114
    :goto_3
    throw v11

    .line 5112
    .restart local v4       #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v8       #root:Landroid/view/View;
    :catch_2
    move-exception v11

    goto :goto_1

    .end local v4           #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8           #root:Landroid/view/View;
    :catch_3
    move-exception v12

    goto :goto_3
.end method

.method public performAccessibilityActionClientThread(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4
    .parameter "accessibilityId"
    .parameter "action"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5121
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5122
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x3fc

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5123
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v2}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 5124
    .local v0, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iput p1, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 5125
    iput p2, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 5126
    iput p3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 5127
    iput-object p4, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 5128
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p5, v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, p6, v2

    if-nez v2, :cond_0

    .line 5135
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 5136
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 5140
    :goto_0
    return-void

    .line 5138
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public perfromAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 5143
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 5144
    .local v2, args:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    iget v0, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 5145
    .local v0, accessibilityId:I
    iget v1, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 5146
    .local v1, action:I
    iget v4, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 5147
    .local v4, interactionId:I
    iget-object v3, v2, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 5149
    .local v3, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v6, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v6, v2}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 5151
    const/4 v5, 0x0

    .line 5153
    .local v5, succeeded:Z
    packed-switch v1, :pswitch_data_0

    .line 5173
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-interface {v3, v5, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5178
    :goto_1
    return-void

    .line 5155
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionFocus(I)Z

    move-result v5

    .line 5157
    goto :goto_0

    .line 5159
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionClearFocus(I)Z

    move-result v5

    .line 5161
    goto :goto_0

    .line 5163
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionSelect(I)Z

    move-result v5

    .line 5165
    goto :goto_0

    .line 5167
    :pswitch_4
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performActionClearSelection(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    .line 5172
    :catchall_0
    move-exception v6

    .line 5173
    :try_start_2
    invoke-interface {v3, v5, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5176
    :goto_2
    throw v6

    .line 5174
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    .line 5153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
