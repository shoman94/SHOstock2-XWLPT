.class final Landroid/view/ViewGroup$TouchTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchTarget"
.end annotation


# static fields
.field public static final ALL_POINTER_IDS:I = -0x1

.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public child:Landroid/view/View;

.field public next:Landroid/view/ViewGroup$TouchTarget;

.field public pointerIdBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5622
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5637
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5638
    return-void
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 3
    .parameter "child"
    .parameter "pointerIdBits"

    .prologue
    .line 5642
    sget-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5643
    :try_start_0
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    if-nez v1, :cond_0

    .line 5644
    new-instance v0, Landroid/view/ViewGroup$TouchTarget;

    invoke-direct {v0}, Landroid/view/ViewGroup$TouchTarget;-><init>()V

    .line 5651
    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5652
    iput-object p0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 5653
    iput p1, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 5654
    return-object v0

    .line 5646
    .end local v0           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 5647
    .restart local v0       #target:Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    sput-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 5648
    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    .line 5649
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 5651
    .end local v0           #target:Landroid/view/ViewGroup$TouchTarget;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 5658
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5659
    :try_start_0
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 5660
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 5661
    sput-object p0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 5662
    sget v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    .line 5666
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 5667
    monitor-exit v1

    .line 5668
    return-void

    .line 5664
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 5667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
