.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 156
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1032
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1064
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 158
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 159
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 160
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 162
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 75
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 97
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 87
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "maxLines"

    .prologue
    .line 111
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1032
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1064
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 126
    if-eqz p11, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 129
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 130
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 131
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 132
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 134
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 140
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 141
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 143
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 145
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 147
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 151
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 153
    return-void

    .line 111
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 137
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 55
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 66
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 68
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 17
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 792
    cmpg-float v14, p8, p5

    if-gtz v14, :cond_0

    if-nez p10, :cond_0

    .line 794
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 795
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 888
    :goto_0
    return-void

    .line 799
    :cond_0
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_3

    const-string/jumbo v14, "\u2025"

    :goto_1
    move-object/from16 v0, p9

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 801
    .local v3, ellipsisWidth:F
    const/4 v2, 0x0

    .line 802
    .local v2, ellipsisStart:I
    const/4 v1, 0x0

    .line 803
    .local v1, ellipsisCount:I
    sub-int v7, p2, p1

    .line 806
    .local v7, len:I
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_6

    .line 807
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 808
    const/4 v12, 0x0

    .line 811
    .local v12, sum:F
    move v4, v7

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_1

    .line 812
    add-int/lit8 v14, v4, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 814
    .local v13, w:F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_4

    .line 821
    .end local v13           #w:F
    :cond_1
    const/4 v2, 0x0

    .line 822
    move v1, v4

    .line 886
    .end local v4           #i:I
    .end local v12           #sum:F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    aput v2, v14, v15

    .line 887
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    aput v1, v14, v15

    goto :goto_0

    .line 799
    .end local v1           #ellipsisCount:I
    .end local v2           #ellipsisStart:I
    .end local v3           #ellipsisWidth:F
    .end local v7           #len:I
    :cond_3
    const-string/jumbo v14, "\u2026"

    goto :goto_1

    .line 818
    .restart local v1       #ellipsisCount:I
    .restart local v2       #ellipsisStart:I
    .restart local v3       #ellipsisWidth:F
    .restart local v4       #i:I
    .restart local v7       #len:I
    .restart local v12       #sum:F
    .restart local v13       #w:F
    :cond_4
    add-float/2addr v12, v13

    .line 811
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 824
    .end local v4           #i:I
    .end local v12           #sum:F
    .end local v13           #w:F
    :cond_5
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 825
    const-string v14, "StaticLayout"

    const-string v15, "Start Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 828
    :cond_6
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_7

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_7

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_a

    .line 830
    :cond_7
    const/4 v12, 0x0

    .line 833
    .restart local v12       #sum:F
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v7, :cond_8

    .line 834
    add-int v14, v4, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 836
    .restart local v13       #w:F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_9

    .line 843
    .end local v13           #w:F
    :cond_8
    move v2, v4

    .line 844
    sub-int v1, v7, v4

    .line 845
    if-eqz p10, :cond_2

    if-nez v1, :cond_2

    if-lez v7, :cond_2

    .line 846
    add-int/lit8 v2, v7, -0x1

    .line 847
    const/4 v1, 0x1

    goto :goto_3

    .line 840
    .restart local v13       #w:F
    :cond_9
    add-float/2addr v12, v13

    .line 833
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 851
    .end local v4           #i:I
    .end local v12           #sum:F
    .end local v13           #w:F
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 852
    const/4 v8, 0x0

    .local v8, lsum:F
    const/4 v11, 0x0

    .line 853
    .local v11, rsum:F
    const/4 v6, 0x0

    .local v6, left:I
    move v10, v7

    .line 855
    .local v10, right:I
    sub-float v14, p5, v3

    const/high16 v15, 0x4000

    div-float v9, v14, v15

    .line 856
    .local v9, ravail:F
    move v10, v7

    :goto_5
    if-ltz v10, :cond_b

    .line 857
    add-int/lit8 v14, v10, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 859
    .restart local v13       #w:F
    add-float v14, v13, v11

    cmpl-float v14, v14, v9

    if-lez v14, :cond_d

    .line 866
    .end local v13           #w:F
    :cond_b
    sub-float v14, p5, v3

    sub-float v5, v14, v11

    .line 867
    .local v5, lavail:F
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v10, :cond_c

    .line 868
    add-int v14, v6, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 870
    .restart local v13       #w:F
    add-float v14, v13, v8

    cmpl-float v14, v14, v5

    if-lez v14, :cond_e

    .line 877
    .end local v13           #w:F
    :cond_c
    move v2, v6

    .line 878
    sub-int v1, v10, v6

    .line 879
    goto/16 :goto_3

    .line 863
    .end local v5           #lavail:F
    .restart local v13       #w:F
    :cond_d
    add-float/2addr v11, v13

    .line 856
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 874
    .restart local v5       #lavail:F
    :cond_e
    add-float/2addr v8, v13

    .line 867
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 880
    .end local v5           #lavail:F
    .end local v6           #left:I
    .end local v8           #lsum:F
    .end local v9           #ravail:F
    .end local v10           #right:I
    .end local v11           #rsum:F
    .end local v13           #w:F
    :cond_f
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 881
    const-string v14, "StaticLayout"

    const-string v15, "Middle Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 579
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v0

    .line 582
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 585
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 586
    if-nez p1, :cond_0

    .line 587
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 604
    goto :goto_0

    .line 609
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 610
    if-nez p1, :cond_0

    .line 611
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 629
    goto :goto_0

    .line 634
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 637
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 640
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 643
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 646
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 649
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 652
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    move v0, v1

    .line 656
    goto :goto_0

    .line 587
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 611
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "bufEnd"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "moreChars"

    .prologue
    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 671
    .local v22, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 672
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 673
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 675
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 676
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 677
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 678
    .local v19, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 680
    move-object/from16 v24, v19

    .line 682
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 683
    .local v20, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 685
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 688
    .end local v19           #grow:[I
    .end local v20           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 689
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 690
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 691
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 692
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 694
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 695
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 696
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 694
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 700
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 704
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 705
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 706
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 707
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 710
    .end local v21           #i:I
    :cond_3
    if-nez v22, :cond_5

    .line 711
    if-eqz p21, :cond_4

    .line 712
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 715
    :cond_4
    if-eqz p20, :cond_5

    .line 716
    move/from16 p4, p6

    .line 719
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 720
    if-eqz p21, :cond_6

    .line 721
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 724
    :cond_6
    if-eqz p20, :cond_7

    .line 725
    move/from16 p5, p7

    .line 731
    :cond_7
    if-eqz p15, :cond_e

    .line 732
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 733
    .local v15, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_d

    .line 734
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 742
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 743
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 744
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 746
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 747
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 748
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 750
    if-eqz p14, :cond_8

    .line 751
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 753
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 754
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 758
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_f

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 765
    :goto_3
    if-eqz p25, :cond_c

    .line 768
    if-nez v22, :cond_10

    const/16 v18, 0x1

    .line 769
    .local v18, firstLine:Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_11

    const/4 v13, 0x1

    .line 770
    .local v13, currentLineIsTheLastVisibleOne:Z
    :goto_5
    if-eqz p29, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_12

    const/4 v12, 0x1

    .line 772
    .local v12, forceEllipsis:Z
    :goto_6
    if-eqz v18, :cond_9

    if-nez p29, :cond_9

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_b

    :cond_9
    if-nez v18, :cond_13

    if-nez v13, :cond_a

    if-nez p29, :cond_13

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_13

    :cond_b
    const/4 v14, 0x1

    .line 776
    .local v14, doEllipsis:Z
    :goto_7
    if-eqz v14, :cond_c

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 777
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 783
    .end local v12           #forceEllipsis:Z
    .end local v13           #currentLineIsTheLastVisibleOne:Z
    .end local v14           #doEllipsis:Z
    .end local v18           #firstLine:Z
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 784
    return p8

    .line 736
    .end local v17           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_d
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 739
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_e
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 761
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto :goto_3

    .line 768
    :cond_10
    const/16 v18, 0x0

    goto :goto_4

    .line 769
    .restart local v18       #firstLine:Z
    :cond_11
    const/4 v13, 0x0

    goto :goto_5

    .line 770
    .restart local v13       #currentLineIsTheLastVisibleOne:Z
    :cond_12
    const/4 v12, 0x0

    goto :goto_6

    .line 772
    .restart local v12       #forceEllipsis:Z
    :cond_13
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 999
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 14
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    .line 173
    const/4 v13, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;Z)V

    .line 176
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;Z)V
    .locals 134
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"
    .parameter "indianLangFlag"

    .prologue
    .line 186
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 188
    const/4 v13, 0x0

    .line 189
    .local v13, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_5

    :cond_0
    const/16 v20, 0x1

    .line 191
    .local v20, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 192
    .local v18, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 194
    .local v17, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v113, v0

    .line 196
    .local v113, measured:Landroid/text/MeasuredText;
    const/16 v127, 0x0

    .line 197
    .local v127, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v127, p1

    .line 198
    check-cast v127, Landroid/text/Spanned;

    .line 200
    :cond_1
    const/16 v80, 0x1

    .line 201
    .local v80, DEFAULT_DIR:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v96

    .line 203
    .local v96, curLanguage:Ljava/lang/String;
    const-string v5, "ar"

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "iw"

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "he"

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "fa"

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "ur"

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    :cond_2
    sget-boolean v5, Landroid/widget/TextView;->mHintText_char_type:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gtz v5, :cond_3

    .line 206
    const/16 v80, -0x1

    .line 211
    .end local v96           #curLanguage:Ljava/lang/String;
    :cond_3
    move/from16 v29, p2

    .local v29, paraStart:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_34

    .line 212
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 213
    .local v38, paraEnd:I
    if-gez v38, :cond_6

    .line 214
    move/from16 v38, p3

    .line 218
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v99, v5, 0x1

    .line 219
    .local v99, firstWidthLineLimit:I
    move/from16 v98, p5

    .line 220
    .local v98, firstWidth:I
    move/from16 v122, p5

    .line 222
    .local v122, restWidth:I
    const/16 v16, 0x0

    .line 224
    .local v16, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v127, :cond_b

    .line 225
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v127

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v123

    check-cast v123, [Landroid/text/style/LeadingMarginSpan;

    .line 227
    .local v123, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v107, 0x0

    .local v107, i:I
    :goto_3
    move-object/from16 v0, v123

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_7

    .line 228
    aget-object v110, v123, v107

    .line 229
    .local v110, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v123, v107

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v98, v98, v5

    .line 230
    aget-object v5, v123, v107

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v122, v122, v5

    .line 236
    move-object/from16 v0, v110

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_4

    move-object/from16 v111, v110

    .line 237
    check-cast v111, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 238
    .local v111, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v127

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v112

    .line 239
    .local v112, lmsFirstLine:I
    invoke-interface/range {v111 .. v111}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v99, v112, v5

    .line 227
    .end local v111           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v112           #lmsFirstLine:I
    :cond_4
    add-int/lit8 v107, v107, 0x1

    goto :goto_3

    .line 189
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v17           #chooseHtv:[I
    .end local v18           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v20           #needMultiply:Z
    .end local v29           #paraStart:I
    .end local v38           #paraEnd:I
    .end local v80           #DEFAULT_DIR:I
    .end local v98           #firstWidth:I
    .end local v99           #firstWidthLineLimit:I
    .end local v107           #i:I
    .end local v110           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v113           #measured:Landroid/text/MeasuredText;
    .end local v122           #restWidth:I
    .end local v123           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v127           #spanned:Landroid/text/Spanned;
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 216
    .restart local v17       #chooseHtv:[I
    .restart local v18       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20       #needMultiply:Z
    .restart local v29       #paraStart:I
    .restart local v38       #paraEnd:I
    .restart local v80       #DEFAULT_DIR:I
    .restart local v113       #measured:Landroid/text/MeasuredText;
    .restart local v127       #spanned:Landroid/text/Spanned;
    :cond_6
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 243
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v98       #firstWidth:I
    .restart local v99       #firstWidthLineLimit:I
    .restart local v107       #i:I
    .restart local v122       #restWidth:I
    .restart local v123       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_7
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v127

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 245
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_b

    .line 246
    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_9

    .line 248
    :cond_8
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 252
    :cond_9
    const/16 v107, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_b

    .line 253
    aget-object v5, v16, v107

    move-object/from16 v0, v127

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v115

    .line 255
    .local v115, o:I
    move/from16 v0, v115

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v107

    .line 252
    :goto_5
    add-int/lit8 v107, v107, 0x1

    goto :goto_4

    .line 263
    :cond_a
    aput v13, v17, v107

    goto :goto_5

    .line 269
    .end local v107           #i:I
    .end local v115           #o:I
    .end local v123           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_b
    move-object/from16 v0, v113

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 270
    move-object/from16 v0, v113

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 271
    .local v27, chs:[C
    move-object/from16 v0, v113

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 272
    .local v28, widths:[F
    move-object/from16 v0, v113

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 273
    .local v21, chdirs:[B
    move-object/from16 v0, v113

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 274
    .local v22, dir:I
    move-object/from16 v0, v113

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 276
    .local v23, easy:Z
    move/from16 v133, v98

    .line 278
    .local v133, width:I
    const/16 v62, 0x0

    .line 279
    .local v62, w:F
    move/from16 v7, v29

    .line 281
    .local v7, here:I
    move/from16 v116, v29

    .line 282
    .local v116, ok:I
    move/from16 v121, v62

    .line 283
    .local v121, okWidth:F
    const/16 v117, 0x0

    .local v117, okAscent:I
    const/16 v119, 0x0

    .local v119, okDescent:I
    const/16 v120, 0x0

    .local v120, okTop:I
    const/16 v118, 0x0

    .line 285
    .local v118, okBottom:I
    move/from16 v100, v29

    .line 286
    .local v100, fit:I
    move/from16 v101, v62

    .line 287
    .local v101, fitWidth:F
    const/16 v39, 0x0

    .local v39, fitAscent:I
    const/16 v40, 0x0

    .local v40, fitDescent:I
    const/16 v41, 0x0

    .local v41, fitTop:I
    const/16 v42, 0x0

    .line 289
    .local v42, fitBottom:I
    const/16 v19, 0x0

    .line 290
    .local v19, hasTabOrEmoji:Z
    const/16 v106, 0x0

    .line 291
    .local v106, hasTab:Z
    const/16 v130, 0x0

    .line 293
    .local v130, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v126, v29

    .local v126, spanStart:I
    move/from16 v124, v126

    .line 294
    .local v124, spanEnd:I
    :goto_6
    move/from16 v0, v126

    move/from16 v1, v38

    if-ge v0, v1, :cond_31

    .line 296
    move/from16 v0, v126

    move/from16 v1, v124

    if-ne v0, v1, :cond_c

    .line 297
    if-nez v127, :cond_1f

    .line 298
    move/from16 v124, v38

    .line 303
    :goto_7
    sub-int v125, v124, v126

    .line 304
    .local v125, spanLen:I
    if-nez v127, :cond_20

    .line 305
    move-object/from16 v0, v113

    move-object/from16 v1, p4

    move/from16 v2, v125

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 315
    .end local v125           #spanLen:I
    :cond_c
    :goto_8
    move/from16 v114, v124

    .line 317
    .local v114, nextSpanStart:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    .line 318
    .local v105, fmTop:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v103, v0

    .line 319
    .local v103, fmBottom:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v102, v0

    .line 320
    .local v102, fmAscent:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    .line 322
    .local v104, fmDescent:I
    const/16 v95, 0x0

    .line 323
    .local v95, char_count:I
    const/16 v129, 0x0

    .line 324
    .local v129, start_index:I
    const/16 v108, 0x0

    .line 326
    .local v108, indicFlag:I
    move/from16 v109, v126

    .local v109, j:I
    :goto_9
    move/from16 v0, v109

    move/from16 v1, v124

    if-ge v0, v1, :cond_1e

    .line 327
    sub-int v5, v109, v29

    aget-char v94, v27, v5

    .line 330
    .local v94, c:C
    if-nez v95, :cond_d

    .line 331
    sub-int v129, v109, v29

    .line 333
    :cond_d
    add-int/lit8 v95, v95, 0x1

    .line 336
    const/16 v5, 0xa

    move/from16 v0, v94

    if-ne v0, v5, :cond_21

    .line 389
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->isIndicChar(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 390
    const/16 v108, 0x1

    .line 392
    :cond_e
    const/4 v5, 0x1

    move/from16 v0, v108

    if-ne v0, v5, :cond_f

    if-eqz p13, :cond_f

    .line 393
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    move/from16 v2, v129

    move/from16 v3, v95

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureTextExt([CII)F

    move-result v62

    .line 397
    :cond_f
    move/from16 v0, v133

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-gtz v5, :cond_29

    .line 398
    move/from16 v101, v62

    .line 399
    add-int/lit8 v100, v109, 0x1

    .line 401
    move/from16 v0, v105

    move/from16 v1, v41

    if-ge v0, v1, :cond_10

    .line 402
    move/from16 v41, v105

    .line 403
    :cond_10
    move/from16 v0, v102

    move/from16 v1, v39

    if-ge v0, v1, :cond_11

    .line 404
    move/from16 v39, v102

    .line 405
    :cond_11
    move/from16 v0, v104

    move/from16 v1, v40

    if-le v0, v1, :cond_12

    .line 406
    move/from16 v40, v104

    .line 407
    :cond_12
    move/from16 v0, v103

    move/from16 v1, v42

    if-le v0, v1, :cond_13

    .line 408
    move/from16 v42, v103

    .line 426
    :cond_13
    const/16 v5, 0x20

    move/from16 v0, v94

    if-eq v0, v5, :cond_19

    const/16 v5, 0x9

    move/from16 v0, v94

    if-eq v0, v5, :cond_19

    const/16 v5, 0x2e

    move/from16 v0, v94

    if-eq v0, v5, :cond_14

    const/16 v5, 0x2c

    move/from16 v0, v94

    if-eq v0, v5, :cond_14

    const/16 v5, 0x3a

    move/from16 v0, v94

    if-eq v0, v5, :cond_14

    const/16 v5, 0x3b

    move/from16 v0, v94

    if-ne v0, v5, :cond_16

    :cond_14
    add-int/lit8 v5, v109, -0x1

    if-lt v5, v7, :cond_15

    add-int/lit8 v5, v109, -0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    add-int/lit8 v5, v109, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_19

    add-int/lit8 v5, v109, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_16
    const/16 v5, 0x2f

    move/from16 v0, v94

    if-eq v0, v5, :cond_17

    const/16 v5, 0x2d

    move/from16 v0, v94

    if-ne v0, v5, :cond_18

    :cond_17
    add-int/lit8 v5, v109, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_19

    add-int/lit8 v5, v109, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_18
    const/16 v5, 0x2e80

    move/from16 v0, v94

    if-lt v0, v5, :cond_1d

    const/4 v5, 0x1

    move/from16 v0, v94

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_1d

    add-int/lit8 v5, v109, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_1d

    add-int/lit8 v5, v109, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 435
    :cond_19
    move/from16 v121, v62

    .line 436
    add-int/lit8 v116, v109, 0x1

    .line 438
    move/from16 v0, v41

    move/from16 v1, v120

    if-ge v0, v1, :cond_1a

    .line 439
    move/from16 v120, v41

    .line 440
    :cond_1a
    move/from16 v0, v39

    move/from16 v1, v117

    if-ge v0, v1, :cond_1b

    .line 441
    move/from16 v117, v39

    .line 442
    :cond_1b
    move/from16 v0, v40

    move/from16 v1, v119

    if-le v0, v1, :cond_1c

    .line 443
    move/from16 v119, v40

    .line 444
    :cond_1c
    move/from16 v0, v42

    move/from16 v1, v118

    if-le v0, v1, :cond_1d

    .line 445
    move/from16 v118, v42

    .line 513
    :cond_1d
    :goto_b
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_30

    .line 294
    .end local v94           #c:C
    :cond_1e
    move/from16 v126, v114

    goto/16 :goto_6

    .line 300
    .end local v95           #char_count:I
    .end local v102           #fmAscent:I
    .end local v103           #fmBottom:I
    .end local v104           #fmDescent:I
    .end local v105           #fmTop:I
    .end local v108           #indicFlag:I
    .end local v109           #j:I
    .end local v114           #nextSpanStart:I
    .end local v129           #start_index:I
    :cond_1f
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v127

    move/from16 v1, v126

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v124

    goto/16 :goto_7

    .line 307
    .restart local v125       #spanLen:I
    :cond_20
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v127

    move/from16 v1, v126

    move/from16 v2, v124

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    check-cast v128, [Landroid/text/style/MetricAffectingSpan;

    .line 309
    .local v128, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move-object/from16 v1, v127

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    .end local v128           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v128, [Landroid/text/style/MetricAffectingSpan;

    .line 311
    .restart local v128       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v113

    move-object/from16 v1, p4

    move-object/from16 v2, v128

    move/from16 v3, v125

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_8

    .line 338
    .end local v125           #spanLen:I
    .end local v128           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v94       #c:C
    .restart local v95       #char_count:I
    .restart local v102       #fmAscent:I
    .restart local v103       #fmBottom:I
    .restart local v104       #fmDescent:I
    .restart local v105       #fmTop:I
    .restart local v108       #indicFlag:I
    .restart local v109       #j:I
    .restart local v114       #nextSpanStart:I
    .restart local v129       #start_index:I
    :cond_21
    const/16 v5, 0x9

    move/from16 v0, v94

    if-ne v0, v5, :cond_24

    .line 339
    if-nez v106, :cond_22

    .line 340
    const/16 v106, 0x1

    .line 341
    const/16 v19, 0x1

    .line 342
    if-eqz v127, :cond_22

    .line 344
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v127

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    check-cast v128, [Landroid/text/style/TabStopSpan;

    .line 346
    .local v128, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v128

    array-length v5, v0

    if-lez v5, :cond_22

    .line 347
    new-instance v130, Landroid/text/Layout$TabStops;

    .end local v130           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v130

    move-object/from16 v1, v128

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 351
    .end local v128           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v130       #tabStops:Landroid/text/Layout$TabStops;
    :cond_22
    if-eqz v130, :cond_23

    .line 352
    move-object/from16 v0, v130

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_a

    .line 354
    :cond_23
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_a

    .line 356
    :cond_24
    const v5, 0xd800

    move/from16 v0, v94

    if-lt v0, v5, :cond_28

    const v5, 0xdfff

    move/from16 v0, v94

    if-gt v0, v5, :cond_28

    add-int/lit8 v5, v109, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_28

    .line 358
    sub-int v5, v109, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v97

    .line 360
    .local v97, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v97

    if-lt v0, v5, :cond_27

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v97

    if-gt v0, v5, :cond_27

    .line 361
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v97

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v93

    .line 363
    .local v93, bm:Landroid/graphics/Bitmap;
    if-eqz v93, :cond_26

    .line 366
    if-nez v127, :cond_25

    .line 367
    move-object/from16 v131, p4

    .line 372
    .local v131, whichPaint:Landroid/graphics/Paint;
    :goto_c
    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v131 .. v131}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v132, v5, v6

    .line 374
    .local v132, wid:F
    add-float v62, v62, v132

    .line 375
    const/16 v19, 0x1

    .line 376
    add-int/lit8 v109, v109, 0x1

    .line 377
    goto/16 :goto_a

    .line 369
    .end local v131           #whichPaint:Landroid/graphics/Paint;
    .end local v132           #wid:F
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v131, v0

    .restart local v131       #whichPaint:Landroid/graphics/Paint;
    goto :goto_c

    .line 378
    .end local v131           #whichPaint:Landroid/graphics/Paint;
    :cond_26
    sub-int v5, v109, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 381
    .end local v93           #bm:Landroid/graphics/Bitmap;
    :cond_27
    sub-int v5, v109, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 384
    .end local v97           #emoji:I
    :cond_28
    sub-int v5, v109, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 448
    :cond_29
    add-int/lit8 v5, v109, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_2b

    const/16 v34, 0x1

    .line 453
    .local v34, moreChars:Z
    :goto_d
    const/16 v95, 0x0

    .line 454
    const/16 v108, 0x0

    .line 457
    move/from16 v0, v116

    if-eq v0, v7, :cond_2d

    .line 459
    const/16 v5, 0x20

    move/from16 v0, v94

    if-ne v0, v5, :cond_2a

    add-int/lit8 v116, v109, 0x1

    .line 461
    :cond_2a
    :goto_e
    move/from16 v0, v116

    move/from16 v1, v124

    if-ge v0, v1, :cond_2c

    sub-int v5, v116, v29

    aget-char v5, v27, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2c

    .line 462
    add-int/lit8 v116, v116, 0x1

    goto :goto_e

    .line 448
    .end local v34           #moreChars:Z
    :cond_2b
    const/16 v34, 0x0

    goto :goto_d

    .line 465
    .restart local v34       #moreChars:Z
    :cond_2c
    move/from16 v8, v116

    .line 466
    .local v8, endPos:I
    move/from16 v9, v117

    .line 467
    .local v9, above:I
    move/from16 v10, v119

    .line 468
    .local v10, below:I
    move/from16 v11, v120

    .line 469
    .local v11, top:I
    move/from16 v12, v118

    .line 470
    .local v12, bottom:I
    move/from16 v32, v121

    .local v32, currentTextWidth:F
    :goto_f
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 487
    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 493
    move v7, v8

    .line 495
    move/from16 v0, v126

    if-ge v7, v0, :cond_2f

    .line 499
    move/from16 v114, v7

    move/from16 v109, v7

    .line 504
    :goto_10
    move/from16 v100, v7

    move/from16 v116, v7

    .line 505
    const/16 v62, 0x0

    .line 506
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 507
    const/16 v118, 0x0

    move/from16 v120, v118

    move/from16 v119, v118

    move/from16 v117, v118

    .line 509
    add-int/lit8 v99, v99, -0x1

    if-gtz v99, :cond_1d

    .line 510
    move/from16 v133, v122

    goto/16 :goto_b

    .line 471
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    :cond_2d
    move/from16 v0, v100

    if-eq v0, v7, :cond_2e

    .line 472
    move/from16 v8, v100

    .line 473
    .restart local v8       #endPos:I
    move/from16 v9, v39

    .line 474
    .restart local v9       #above:I
    move/from16 v10, v40

    .line 475
    .restart local v10       #below:I
    move/from16 v11, v41

    .line 476
    .restart local v11       #top:I
    move/from16 v12, v42

    .line 477
    .restart local v12       #bottom:I
    move/from16 v32, v101

    .restart local v32       #currentTextWidth:F
    goto :goto_f

    .line 479
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    :cond_2e
    add-int/lit8 v8, v7, 0x1

    .line 480
    .restart local v8       #endPos:I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 481
    .restart local v9       #above:I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 482
    .restart local v10       #below:I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 483
    .restart local v11       #top:I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 484
    .restart local v12       #bottom:I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32       #currentTextWidth:F
    goto :goto_f

    .line 501
    :cond_2f
    add-int/lit8 v109, v7, -0x1

    goto :goto_10

    .line 326
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    :cond_30
    add-int/lit8 v109, v109, 0x1

    goto/16 :goto_9

    .line 519
    .end local v94           #c:C
    .end local v95           #char_count:I
    .end local v102           #fmAscent:I
    .end local v103           #fmBottom:I
    .end local v104           #fmDescent:I
    .end local v105           #fmTop:I
    .end local v108           #indicFlag:I
    .end local v109           #j:I
    .end local v114           #nextSpanStart:I
    .end local v129           #start_index:I
    :cond_31
    move/from16 v0, v38

    if-eq v0, v7, :cond_33

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_33

    .line 520
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_32

    .line 521
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 523
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 524
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 525
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 526
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 531
    :cond_32
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_37

    const/16 v64, 0x1

    :goto_11
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 543
    :cond_33
    move/from16 v29, v38

    .line 545
    move/from16 v0, v38

    move/from16 v1, p3

    if-ne v0, v1, :cond_38

    .line 549
    .end local v7           #here:I
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #hasTabOrEmoji:Z
    .end local v21           #chdirs:[B
    .end local v22           #dir:I
    .end local v23           #easy:Z
    .end local v27           #chs:[C
    .end local v28           #widths:[F
    .end local v38           #paraEnd:I
    .end local v39           #fitAscent:I
    .end local v40           #fitDescent:I
    .end local v41           #fitTop:I
    .end local v42           #fitBottom:I
    .end local v62           #w:F
    .end local v98           #firstWidth:I
    .end local v99           #firstWidthLineLimit:I
    .end local v100           #fit:I
    .end local v101           #fitWidth:F
    .end local v106           #hasTab:Z
    .end local v116           #ok:I
    .end local v117           #okAscent:I
    .end local v118           #okBottom:I
    .end local v119           #okDescent:I
    .end local v120           #okTop:I
    .end local v121           #okWidth:F
    .end local v122           #restWidth:I
    .end local v124           #spanEnd:I
    .end local v126           #spanStart:I
    .end local v130           #tabStops:Landroid/text/Layout$TabStops;
    .end local v133           #width:I
    :cond_34
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_35

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_36

    :cond_35
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_36

    .line 553
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 555
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x1

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 566
    :cond_36
    return-void

    .line 531
    .restart local v7       #here:I
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v19       #hasTabOrEmoji:Z
    .restart local v21       #chdirs:[B
    .restart local v22       #dir:I
    .restart local v23       #easy:Z
    .restart local v27       #chs:[C
    .restart local v28       #widths:[F
    .restart local v38       #paraEnd:I
    .restart local v39       #fitAscent:I
    .restart local v40       #fitDescent:I
    .restart local v41       #fitTop:I
    .restart local v42       #fitBottom:I
    .restart local v62       #w:F
    .restart local v98       #firstWidth:I
    .restart local v99       #firstWidthLineLimit:I
    .restart local v100       #fit:I
    .restart local v101       #fitWidth:F
    .restart local v106       #hasTab:Z
    .restart local v116       #ok:I
    .restart local v117       #okAscent:I
    .restart local v118       #okBottom:I
    .restart local v119       #okDescent:I
    .restart local v120       #okTop:I
    .restart local v121       #okWidth:F
    .restart local v122       #restWidth:I
    .restart local v124       #spanEnd:I
    .restart local v126       #spanStart:I
    .restart local v130       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v133       #width:I
    :cond_37
    const/16 v64, 0x0

    goto/16 :goto_11

    .line 211
    :cond_38
    move/from16 v29, v38

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 967
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 972
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 973
    const/4 v0, 0x0

    .line 976
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 981
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 982
    const/4 v0, 0x0

    .line 985
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 990
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 952
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 932
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 933
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 935
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 937
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 957
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 896
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 897
    .local v1, high:I
    const/4 v3, -0x1

    .line 899
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 900
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 901
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 902
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 903
    move v1, v0

    goto :goto_0

    .line 905
    :cond_0
    move v3, v0

    goto :goto_0

    .line 908
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 909
    const/4 v3, 0x0

    .line 911
    .end local v3           #low:I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 942
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 922
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 923
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 925
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 927
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 947
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public isIndicChar(C)Z
    .locals 1
    .parameter "primaryCodes"

    .prologue
    .line 1004
    const/16 v0, 0x94d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xccd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xacd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9cd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdca

    if-ne p1, v0, :cond_1

    .line 1009
    :cond_0
    const/4 v0, 0x1

    .line 1011
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 994
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 995
    return-void
.end method
