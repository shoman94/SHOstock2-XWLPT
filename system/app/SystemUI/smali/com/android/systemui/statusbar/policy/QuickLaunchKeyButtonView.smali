.class public Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;
.super Lcom/android/systemui/statusbar/policy/KeyButtonView;
.source "QuickLaunchKeyButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;,
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;,
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;
    }
.end annotation


# static fields
.field public static final ACTION_TOUCH_CAPTURE_BTN:Ljava/lang/String; = "android.intent.action.TOUCH_CAPTURE_BTN"

.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "StatusBar.QuickLaunchKeyButtonView"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mQuickLaunchMode:I

.field private mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;-><init>(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->updateQuickLaunchKeyButton(I)V

    return-void
.end method

.method private onClickApplicationButton()V
    .locals 4

    .prologue
    .line 219
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickApplicationButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    const-string v2, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v3, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onClickCameraButton()V
    .locals 5

    .prologue
    .line 244
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickCameraButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onClickQuickLauncherButton()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    const-string v1, "onClickQuickLauncherButton"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 173
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickScreenCaptureButton()V

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickApplicationButton()V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickSearchButton()V

    goto :goto_0

    .line 182
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickCameraButton()V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onClickScreenCaptureButton()V
    .locals 4

    .prologue
    .line 201
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickScreenCaptureButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    const-string v2, "com.diotek.screen_capture"

    const-string v3, "com.diotek.screen_capture.CaptureService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onClickSearchButton()V
    .locals 5

    .prologue
    .line 232
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickSearchButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onLongClickQuickLauncherButton()Z
    .locals 2

    .prologue
    .line 190
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    const-string v1, "onLongClickQuickLauncherButton"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 196
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 193
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onLongClickScreenCaptureButton()V

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private onLongClickScreenCaptureButton()V
    .locals 3

    .prologue
    .line 213
    const-string v1, "StatusBar.QuickLaunchKeyButtonView"

    const-string v2, "onLongClickScreenCaptureButton"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TOUCH_CAPTURE_BTN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method private updateQuickLaunchKeyButton(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQuickLaunchKeyButton : mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    .line 167
    :goto_0
    return-void

    .line 141
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 159
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 139
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


# virtual methods
.method public getQuickLaunchMode()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public isQuickLaunchNoneMode()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->NONE:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenCaptureQuickLaunchMode()Z
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->SCREENCAPTURE:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickQuickLauncherButton()V

    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->onFinishInflate()V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getQuickLaunchMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->updateQuickLaunchKeyButton(I)V

    .line 110
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onLongClickQuickLauncherButton()Z

    move-result v0

    return v0
.end method
