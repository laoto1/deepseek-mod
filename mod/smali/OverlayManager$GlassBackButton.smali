.class Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlassBackButton"
.end annotation


# instance fields
.field private p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 715
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 716
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    .line 717
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 721
    move-object v0, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 722
    invoke-virtual {p0}, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->getWidth()I

    move-result v1

    .line 723
    invoke-virtual {p0}, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->getHeight()I

    move-result v2

    .line 724
    if-lez v1, :cond_10e

    if-gtz v2, :cond_12

    goto/16 :goto_10e

    .line 726
    :cond_12
    int-to-float v6, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v6, v1

    .line 727
    int-to-float v7, v2

    div-float v2, v7, v1

    .line 728
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v12, 0x3f800000    # 1.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    sub-float v5, v6, v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    sub-float v8, v7, v8

    invoke-direct {v1, v3, v4, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 730
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 731
    iget-object v13, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    const v9, -0xe2b128

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v8, -0xc47d0a

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 732
    const/high16 v3, 0x41400000    # 12.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    iget-object v7, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 733
    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 735
    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    const v5, 0x44ffffff    # 2047.9999f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 736
    new-instance v4, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    sub-float/2addr v6, v8

    invoke-direct {v4, v5, v7, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 737
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    iget-object v7, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 739
    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 740
    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    const v5, -0x9f5a06

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 741
    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x3fc00000    # 1.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 742
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 744
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    const v3, 0x400ccccd    # 2.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 746
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 747
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 749
    const/high16 v1, 0x40e00000    # 7.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v1

    .line 750
    move v3, v1

    sub-float v1, v11, v3

    add-float/2addr v3, v11

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 752
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 753
    const/high16 v4, 0x40900000    # 4.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    add-float/2addr v5, v1

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    sub-float v6, v2, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 754
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 755
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    add-float/2addr v1, v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 756
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBackButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 757
    return-void

    .line 724
    :cond_10e
    :goto_10e
    return-void
.end method
