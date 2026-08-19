.class Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlassAvatarIcon"
.end annotation


# instance fields
.field private letter:Ljava/lang/String;

.field private p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 863
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 864
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->letter:Ljava/lang/String;

    .line 865
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    .line 866
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20

    .line 870
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 871
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->getWidth()I

    move-result v2

    .line 872
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->getHeight()I

    move-result v3

    .line 873
    if-lez v2, :cond_126

    if-gtz v3, :cond_15

    goto/16 :goto_126

    .line 875
    :cond_15
    int-to-float v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v7, v2

    .line 876
    int-to-float v8, v3

    div-float v3, v8, v2

    .line 877
    new-instance v13, Landroid/graphics/RectF;

    const/high16 v14, 0x3f800000    # 1.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    sub-float v6, v7, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v9

    sub-float v9, v8, v9

    invoke-direct {v13, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 879
    const-string v4, "B"

    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->letter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 880
    if-eqz v4, :cond_49

    const v5, -0xc47d0a

    const v9, -0xc47d0a

    goto :goto_4f

    :cond_49
    const v5, -0x74a30a

    const v9, -0x74a30a

    .line 881
    :goto_4f
    if-eqz v4, :cond_58

    const v5, -0xe2b128

    const v10, -0xe2b128

    goto :goto_5e

    :cond_58
    const v5, -0x92d727

    const v10, -0x92d727

    .line 882
    :goto_5e
    if-eqz v4, :cond_67

    const v4, -0x9f5a06

    const v15, -0x9f5a06

    goto :goto_6d

    :cond_67
    const v4, -0x587406

    const v15, -0x587406

    .line 884
    :goto_6d
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 885
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    move-object v5, v4

    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object/from16 v2, v16

    const/high16 v17, 0x40000000    # 2.0f

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 886
    const/high16 v2, 0x41200000    # 10.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 887
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 889
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    const v5, 0x35ffffff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 890
    new-instance v4, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 891
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    iget-object v7, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 893
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 894
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 895
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    const v5, 0x3f99999a    # 1.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 896
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 898
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 899
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 900
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    const/high16 v4, 0x41700000    # 15.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 901
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 902
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 904
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 905
    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v2

    div-float v4, v4, v17

    sub-float/2addr v3, v4

    .line 906
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->letter:Ljava/lang/String;

    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassAvatarIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 907
    return-void

    .line 873
    :cond_126
    :goto_126
    return-void
.end method
