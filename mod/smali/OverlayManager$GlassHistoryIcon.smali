.class Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlassHistoryIcon"
.end annotation


# instance fields
.field private p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 915
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 916
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    .line 917
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 921
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 922
    invoke-virtual {p0}, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->getWidth()I

    move-result v0

    .line 923
    invoke-virtual {p0}, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->getHeight()I

    move-result v1

    .line 924
    if-lez v0, :cond_15d

    if-gtz v1, :cond_11

    goto/16 :goto_15d

    .line 926
    :cond_11
    int-to-float v5, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v10, v5, v0

    .line 927
    int-to-float v6, v1

    div-float v1, v6, v0

    .line 928
    new-instance v11, Landroid/graphics/RectF;

    const/high16 v12, 0x3f800000    # 1.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    sub-float v4, v5, v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    sub-float v7, v6, v7

    invoke-direct {v11, v2, v3, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 930
    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 931
    iget-object v13, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const v8, -0xda9c15

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v7, -0xb0b91b

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 932
    const/high16 v2, 0x41400000    # 12.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    iget-object v6, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v3, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 933
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 935
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    const v4, 0x38ffffff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 936
    new-instance v3, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    sub-float/2addr v5, v7

    invoke-direct {v3, v4, v6, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 937
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    iget-object v6, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 939
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 940
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    const v4, -0x7e7308

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 941
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x3fc00000    # 1.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 942
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 944
    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 945
    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 946
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 948
    const/high16 v0, 0x41000000    # 8.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v0

    .line 949
    new-instance v3, Landroid/graphics/RectF;

    sub-float v2, v10, v0

    sub-float v4, v1, v0

    add-float v5, v10, v0

    add-float v6, v1, v0

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 950
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x420c0000    # 35.0f

    const v5, 0x43898000    # 275.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 952
    move-object v6, v2

    float-to-double v2, v0

    const-wide v4, 0x4041800000000000L    # 35.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v2

    double-to-float p1, v7

    add-float/2addr p1, v10

    .line 953
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v0, v2

    add-float/2addr v0, v1

    .line 954
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 955
    const v3, 0x40733333    # 3.8f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    sub-float v4, p1, v4

    const v5, 0x3f99999a    # 1.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    sub-float v7, v0, v7

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 956
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 957
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    add-float/2addr p1, v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 958
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v6, v2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 960
    const p1, 0x4099999a    # 4.8f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result p1

    sub-float p1, v1, p1

    iget-object v11, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    move v9, v10

    move v8, v1

    move v7, v10

    move v10, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 961
    const p1, 0x40666666    # 3.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result p1

    sub-float v9, v7, p1

    iget-object v11, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;->p:Landroid/graphics/Paint;

    move v10, v8

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 962
    return-void

    .line 924
    :cond_15d
    :goto_15d
    return-void
.end method
