.class Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnClickPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnClickPendingIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 477
    .local v0, appScale:F
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 478
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 480
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 481
    .local v3, rect:Landroid/graphics/Rect;
    aget v4, v2, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 482
    aget v4, v2, v7

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 483
    aget v4, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 484
    aget v4, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 486
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 487
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 488
    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6, v1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->startIntentSafely(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 489
    return-void
.end method
