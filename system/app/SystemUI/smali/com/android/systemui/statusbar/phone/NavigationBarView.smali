.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;
    }
.end annotation


# static fields
.field static final ANIMATE_HIDE_TRANSITION:Z = false

.field static final DEBUG:Z = false

.field static final DEBUG_DEADZONE:Z = false

.field private static final MARQUEE_DIRECTION_LEFT:I = -0x1

.field private static final MARQUEE_DIRECTION_RIGHT:I = 0x1

.field private static final MARQUEE_RANGE_MAX:I = 0x2

.field private static final MARQUEE_RANGE_MIN:I = -0x2

.field static final MSG_CHECK_INVALID_LAYOUT:I = 0x21ee

.field static final NAVBAR_ALWAYS_AT_RIGHT:Z = true

.field static final TAG:Ljava/lang/String; = "PhoneStatusBar/NavigationBarView"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NavigationBarView"

.field static final WORKAROUND_INVALID_LAYOUT:Z = true


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mBarSize:I

.field mCurrentView:Landroid/view/View;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field mHidden:Z

.field mLightsOutListener:Landroid/view/View$OnTouchListener;

.field mLowProfile:Z

.field private mMarqueeDirection:I

.field private mMarqueeRange:I

.field mRotatedViews:[Landroid/view/View;

.field mShowMenu:Z

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 60
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 66
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 95
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 101
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeDirection:I

    .line 105
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeRange:I

    .line 168
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    .line 155
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    .line 157
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 159
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    .line 164
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 166
    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .parameter "resId"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 376
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 381
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 377
    .restart local v1       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 378
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 381
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .parameter "how"

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 387
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .parameter "vis"

    .prologue
    .line 390
    sparse-switch p0, :sswitch_data_0

    .line 396
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    .line 392
    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 394
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 401
    const-string v6, "NavigationBarView {"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 404
    .local v4, r:Landroid/graphics/Rect;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      this: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 408
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRawWidth()I

    move-result v7

    if-gt v6, v7, :cond_0

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRawHeight()I

    move-result v7

    if-le v6, v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 410
    .local v3, offscreen:Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      window: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_2

    const-string v6, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    const-string v6, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v7, "      disabled=0x%08x vertical=%s hidden=%s low=%s menu=%s"

    const/4 v6, 0x5

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v6, :cond_3

    const-string v6, "true"

    :goto_2
    aput-object v6, v8, v9

    const/4 v9, 0x2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    if-eqz v6, :cond_4

    const-string v6, "true"

    :goto_3
    aput-object v6, v8, v9

    const/4 v9, 0x3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    if-eqz v6, :cond_5

    const-string v6, "true"

    :goto_4
    aput-object v6, v8, v9

    const/4 v9, 0x4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v6, :cond_6

    const-string v6, "true"

    :goto_5
    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    .line 428
    .local v0, back:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, home:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v5

    .line 430
    .local v5, recent:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v2

    .line 432
    .local v2, menu:Landroid/view/View;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      back: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      home: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      rcnt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      menu: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    const-string v6, "    }"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    return-void

    .line 408
    .end local v0           #back:Landroid/view/View;
    .end local v1           #home:Landroid/view/View;
    .end local v2           #menu:Landroid/view/View;
    .end local v3           #offscreen:Z
    .end local v5           #recent:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 410
    .restart local v3       #offscreen:Z
    :cond_2
    const-string v6, ""

    goto/16 :goto_1

    .line 420
    :cond_3
    const-string v6, "false"

    goto/16 :goto_2

    :cond_4
    const-string v6, "false"

    goto/16 :goto_3

    :cond_5
    const-string v6, "false"

    goto/16 :goto_4

    :cond_6
    const-string v6, "false"

    goto/16 :goto_5
.end method

.method public getBackButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public marqueeNavigationBar()V
    .locals 5

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeRange:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeRange:I

    .line 110
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeRange:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeDirection:I

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeDirection:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeDirection:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->invalidate()V

    .line 124
    const-string v0, "STATUSBAR-NavigationBarView"

    const-string v1, "marqueeNavigationBar - invalidate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 112
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeRange:I

    const/4 v1, -0x2

    if-gt v0, v1, :cond_0

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeDirection:I

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 11

    .prologue
    const v10, 0x7f0f0016

    const/4 v9, 0x0

    .line 288
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v7, 0x2

    const v8, 0x7f0f000e

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v8, v5, v9

    .line 291
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    .line 293
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v6, 0x3

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 299
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f000f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 300
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v4           #v:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v5, v5, v9

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 305
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->alwaysShowMenuKey:Z

    if-eqz v5, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 346
    const-string v0, "sizeChanged"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 348
    return-void
.end method

.method public reorient()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 313
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 314
    .local v1, rot:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 318
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 319
    if-eq v1, v4, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 322
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    .line 323
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 324
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 335
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->alwaysShowMenuKey:Z

    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 319
    goto :goto_1
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .parameter "disabledFlags"

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 188
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 7
    .parameter "disabledFlags"
    .parameter "force"

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 191
    if-nez p2, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v4, p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 195
    const/high16 v4, 0x20

    and-int/2addr v4, p1

    if-eqz v4, :cond_3

    move v1, v0

    .line 196
    .local v1, disableHome:Z
    :goto_1
    const/high16 v4, 0x100

    and-int/2addr v4, p1

    if-eqz v4, :cond_4

    move v2, v0

    .line 197
    .local v2, disableRecent:Z
    :goto_2
    const/high16 v4, 0x40

    and-int/2addr v4, p1

    if-eqz v4, :cond_5

    .line 199
    .local v0, disableBack:Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v6

    if-eqz v0, :cond_6

    move v4, v5

    :goto_4
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v6

    if-eqz v1, :cond_7

    move v4, v5

    :goto_5
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 202
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->alwaysShowMenuKey:Z

    if-nez v4, :cond_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_8

    :goto_6
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0           #disableBack:Z
    .end local v1           #disableHome:Z
    .end local v2           #disableRecent:Z
    :cond_3
    move v1, v3

    .line 195
    goto :goto_1

    .restart local v1       #disableHome:Z
    :cond_4
    move v2, v3

    .line 196
    goto :goto_2

    .restart local v2       #disableRecent:Z
    :cond_5
    move v0, v3

    .line 197
    goto :goto_3

    .restart local v0       #disableBack:Z
    :cond_6
    move v4, v3

    .line 199
    goto :goto_4

    :cond_7
    move v4, v3

    .line 200
    goto :goto_5

    :cond_8
    move v5, v3

    .line 204
    goto :goto_6
.end method

.method public setHidden(Z)V
    .locals 3
    .parameter "hide"

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    if-ne p1, v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    .line 280
    const-string v1, "PhoneStatusBar/NavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "HIDING"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " navigation bar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(Z)V

    goto :goto_0

    .line 280
    :cond_1
    const-string v0, "SHOWING"

    goto :goto_1
.end method

.method public setLowProfile(Z)V
    .locals 2
    .parameter "lightsOut"

    .prologue
    .line 228
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    .line 229
    return-void
.end method

.method public setLowProfile(ZZZ)V
    .locals 9
    .parameter "lightsOut"
    .parameter "animate"
    .parameter "force"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 232
    if-nez p3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    if-ne p1, v2, :cond_0

    .line 274
    :goto_0
    return-void

    .line 234
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f0f000f

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, navButtons:Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f0f0014

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, lowLights:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 245
    if-nez p2, :cond_4

    .line 246
    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 248
    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 249
    if-eqz p1, :cond_3

    move v2, v5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 246
    goto :goto_1

    :cond_2
    move v4, v3

    .line 248
    goto :goto_2

    :cond_3
    move v2, v6

    .line 249
    goto :goto_3

    .line 251
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-eqz p1, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_7

    const-wide/16 v7, 0x258

    :goto_5
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 258
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 259
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_8

    :goto_6
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_9

    const-wide/16 v2, 0x1f4

    :goto_7
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_a

    const-wide/16 v2, 0x3e8

    :goto_8
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_b

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 251
    goto :goto_4

    :cond_7
    const-wide/16 v7, 0xc8

    goto :goto_5

    :cond_8
    move v4, v3

    .line 261
    goto :goto_6

    :cond_9
    const-wide/16 v2, 0x0

    goto :goto_7

    :cond_a
    const-wide/16 v2, 0x12c

    goto :goto_8

    :cond_b
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/view/View;)V

    goto :goto_9
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 209
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "force"

    .prologue
    .line 212
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v0, p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 217
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->alwaysShowMenuKey:Z

    if-nez v0, :cond_0

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method
