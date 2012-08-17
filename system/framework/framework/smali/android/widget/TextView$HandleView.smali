.class abstract Landroid/widget/TextView$HandleView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mOnTop:Z

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .locals 7
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"
    .parameter "onTop"

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11522
    iput-object p1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    .line 11523
    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$7100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11511
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 11513
    iput-boolean v6, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    .line 11518
    iput-boolean v5, p0, Landroid/widget/TextView$HandleView;->mOnTop:Z

    .line 11567
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    .line 11568
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    .line 11569
    iput v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 11570
    iput v5, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 11524
    new-instance v1, Landroid/widget/PopupWindow;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 11526
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 11527
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 11530
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 11532
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 11534
    iput-object p2, p0, Landroid/widget/TextView$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 11535
    iput-object p3, p0, Landroid/widget/TextView$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 11537
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->updateDrawable()V

    .line 11539
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 11541
    .local v0, handleHeight:I
    iput-boolean p4, p0, Landroid/widget/TextView$HandleView;->mOnTop:Z

    .line 11543
    iget-boolean v1, p0, Landroid/widget/TextView$HandleView;->mOnTop:Z

    if-nez v1, :cond_0

    .line 11544
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    .line 11545
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    .line 11551
    :goto_0
    return-void

    .line 11547
    :cond_0
    const v1, 0x3e99999a

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    .line 11548
    const v1, -0x40cccccd

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 11578
    iget v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 11579
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 11580
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 11581
    iget v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 11582
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 11585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 11586
    .local v3, now:J
    const/4 v0, 0x0

    .line 11587
    .local v0, i:I
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 11588
    .local v2, index:I
    iget v5, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11589
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 11590
    add-int/lit8 v0, v0, 0x1

    .line 11591
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 11594
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 11596
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)V

    .line 11598
    :cond_1
    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 11664
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 11665
    const/4 v0, 0x1

    .line 11672
    :goto_0
    return v0

    .line 11668
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11669
    const/4 v0, 0x0

    goto :goto_0

    .line 11672
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    #calls: Landroid/widget/TextView;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/TextView;->access$7400(Landroid/widget/TextView;II)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 11573
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 11574
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 11575
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 11622
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    .line 11623
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11624
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->onDetached()V

    .line 11625
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 11628
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    .line 11630
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    .line 11631
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 11650
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 11651
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11653
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 11654
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 11656
    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 11826
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 11659
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11601
    iget v1, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 11834
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    .line 11835
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 11757
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11758
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11759
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 11830
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    .line 11831
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 11606
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->setMeasuredDimension(II)V

    .line 11607
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 11763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 11822
    :goto_0
    return v12

    .line 11765
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/widget/TextView$HandleView;->startTouchUpFilter(I)V

    .line 11766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget v11, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 11767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iget v11, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 11769
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v10}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v4

    .line 11770
    .local v4, positionListener:Landroid/widget/TextView$PositionListener;
    invoke-virtual {v4}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v10

    iput v10, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 11771
    invoke-virtual {v4}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v10

    iput v10, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 11772
    iput-boolean v12, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto :goto_0

    .line 11777
    .end local v4           #positionListener:Landroid/widget/TextView$PositionListener;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 11778
    .local v6, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 11781
    .local v7, rawY:F
    iget v10, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget v11, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v11, v11

    sub-float v5, v10, v11

    .line 11782
    .local v5, previousVerticalOffset:F
    iget v10, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v10, v10

    sub-float v10, v7, v10

    iget v11, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v11, v11

    sub-float v0, v10, v11

    .line 11784
    .local v0, currentVerticalOffset:F
    iget v10, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    cmpg-float v10, v5, v10

    if-gez v10, :cond_0

    .line 11785
    iget v10, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 11786
    .local v3, newVerticalOffset:F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 11791
    :goto_1
    iget v10, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    iput v10, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 11793
    iget v10, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    sub-float v10, v6, v10

    iget v11, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    int-to-float v11, v11

    add-float v1, v10, v11

    .line 11794
    .local v1, newPosX:F
    iget v10, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    sub-float v10, v7, v10

    iget v11, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    add-float v2, v10, v11

    .line 11796
    .local v2, newPosY:F
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView$HandleView;->updatePosition(FF)V

    goto :goto_0

    .line 11788
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    :cond_0
    iget v10, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 11789
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 11802
    .end local v0           #currentVerticalOffset:F
    .end local v3           #newVerticalOffset:F
    .end local v5           #previousVerticalOffset:F
    .end local v6           #rawX:F
    .end local v7           #rawY:F
    :pswitch_2
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->hasSelection()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 11803
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 11804
    .local v9, selectionStart:I
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 11806
    .local v8, selectionEnd:I
    if-le v9, v8, :cond_2

    .line 11807
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->swapSelectionControllers()V
    invoke-static {v10}, Landroid/widget/TextView;->access$7600(Landroid/widget/TextView;)V

    .line 11814
    .end local v8           #selectionEnd:I
    .end local v9           #selectionStart:I
    :cond_1
    :goto_2
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->filterOnTouchUp()V

    .line 11815
    iput-boolean v11, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 11809
    .restart local v8       #selectionEnd:I
    .restart local v9       #selectionStart:I
    :cond_2
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->switchStartHandle()V
    invoke-static {v10}, Landroid/widget/TextView;->access$7700(Landroid/widget/TextView;)V

    goto :goto_2

    .line 11819
    .end local v8           #selectionEnd:I
    .end local v9           #selectionStart:I
    :pswitch_3
    iput-boolean v11, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 11763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 3
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    .line 11683
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_1

    .line 11685
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->prepareCursorControllers()V
    invoke-static {v1}, Landroid/widget/TextView;->access$7500(Landroid/widget/TextView;)V

    .line 11710
    :cond_0
    :goto_0
    return-void

    .line 11689
    :cond_1
    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_0

    .line 11690
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView$HandleView;->updateSelection(I)V

    .line 11691
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 11692
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 11694
    .local v0, line:I
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    .line 11696
    iget-boolean v1, p0, Landroid/widget/TextView$HandleView;->mOnTop:Z

    if-nez v1, :cond_3

    .line 11697
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 11704
    :goto_1
    iget v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static {v2}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    .line 11705
    iget v1, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v2}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 11707
    iput p1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 11708
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 11699
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    goto :goto_1
.end method

.method public show()V
    .locals 2

    .prologue
    .line 11610
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11619
    :goto_0
    return-void

    .line 11612
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 11615
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 11616
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)V

    .line 11618
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 11634
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 11635
    new-instance v0, Landroid/widget/TextView$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$ActionPopupWindow;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    .line 11637
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 11638
    new-instance v0, Landroid/widget/TextView$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$HandleView$1;-><init>(Landroid/widget/TextView$HandleView;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 11646
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11647
    return-void

    .line 11644
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 11554
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 11555
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 11556
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 11557
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 11558
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    .line 11559
    :cond_0
    return-void

    .line 11556
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 11714
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)V

    .line 11715
    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 11716
    :cond_0
    iget-boolean v2, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 11718
    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 11719
    :cond_1
    iget v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 11720
    iget v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 11721
    iput p1, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 11722
    iput p2, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 11725
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->onHandleMoved()V

    .line 11728
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 11729
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 11732
    .local v0, positionX:I
    iget-boolean v2, p0, Landroid/widget/TextView$HandleView;->mOnTop:Z

    if-nez v2, :cond_6

    .line 11733
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 11739
    .local v1, positionY:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11740
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 11751
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :cond_4
    :goto_1
    iput-boolean v5, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    .line 11753
    :cond_5
    return-void

    .line 11735
    .restart local v0       #positionX:I
    :cond_6
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    add-int/2addr v2, p2

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1       #positionY:I
    goto :goto_0

    .line 11742
    :cond_7
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 11746
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11747
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    goto :goto_1
.end method

.method protected abstract updateSelection(I)V
.end method