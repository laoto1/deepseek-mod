.class Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlassRedButton"
.end annotation


# instance fields
.field private p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 818
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 819
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    .line 820
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 824
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 825
    invoke-virtual {p0}, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->getWidth()I

    move-result v0

    .line 826
    invoke-virtual {p0}, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->getHeight()I

    move-result v1

    .line 827
    if-lez v0, :cond_ea

    if-gtz v1, :cond_11

    goto/16 :goto_ea

    .line 829
    :cond_11
    int-to-float v5, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v10, v5, v0

    .line 830
    int-to-float v6, v1

    div-float v0, v6, v0

    .line 831
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v11, 0x3f800000    # 1.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    sub-float v4, v5, v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    sub-float v7, v6, v7

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 833
    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 834
    iget-object v12, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const v8, -0xfc4f5ed

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v7, -0x19a3ebe0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 835
    const/high16 v2, 0x41400000    # 12.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    iget-object v6, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 836
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 838
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    const v4, 0x22ef4444

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 839
    new-instance v3, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    sub-float/2addr v5, v7

    invoke-direct {v3, v4, v6, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 840
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    iget-object v6, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 842
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 843
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    const v4, -0x10bbbc

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 844
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x3fc00000    # 1.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 845
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 847
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    const v2, -0x35a5b

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 848
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    const v2, 0x400ccccd    # 2.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 849
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 851
    const/high16 v1, 0x40b00000    # 5.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v1

    .line 852
    sub-float v3, v10, v1

    sub-float v4, v0, v1

    add-float v5, v10, v1

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 853
    iget-object v7, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassRedButton;->p:Landroid/graphics/Paint;

    move v13, v5

    move v5, v3

    move v3, v13

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 854
    return-void

    .line 827
    :cond_ea
    :goto_ea
    return-void
.end method
