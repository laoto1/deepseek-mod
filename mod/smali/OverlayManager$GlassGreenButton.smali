.class Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlassGreenButton"
.end annotation


# instance fields
.field private p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1183
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1184
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    .line 1185
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    .line 1189
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1190
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->getWidth()I

    move-result v2

    .line 1191
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->getHeight()I

    move-result v3

    .line 1192
    if-lez v2, :cond_120

    if-gtz v3, :cond_15

    goto/16 :goto_120

    .line 1194
    :cond_15
    int-to-float v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v7, v2

    .line 1195
    int-to-float v8, v3

    div-float v13, v8, v2

    .line 1196
    new-instance v3, Landroid/graphics/RectF;

    const/high16 v14, 0x3f800000    # 1.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    sub-float v6, v7, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v9

    sub-float v9, v8, v9

    invoke-direct {v3, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1198
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1199
    iget-object v15, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const v10, -0xff9d1e2

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v9, -0x19f2b2ce

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1200
    const/high16 v4, 0x41400000    # 12.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1201
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1203
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    const v6, 0x224ade80

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1204
    new-instance v5, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v8

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v9

    sub-float/2addr v7, v9

    invoke-direct {v5, v6, v8, v7, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1205
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v7

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1207
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1208
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    const v6, -0xdd3aa2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1209
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    const/high16 v6, 0x3fc00000    # 1.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1210
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    iget-object v7, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1212
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    const v4, -0xb52180

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1213
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1214
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1216
    const/high16 v3, 0x40b00000    # 5.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    .line 1217
    sub-float v4, v12, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    sub-float v7, v4, v2

    .line 1218
    const/high16 v2, 0x40200000    # 2.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    add-float/2addr v2, v4

    .line 1219
    add-float/2addr v12, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    add-float v4, v12, v3

    .line 1221
    const/4 v3, -0x1

    const/4 v8, -0x1

    :goto_ec
    const/4 v3, 0x1

    if-gt v8, v3, :cond_11f

    .line 1222
    int-to-float v3, v8

    const v5, 0x40933333    # 4.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    mul-float v3, v3, v5

    add-float/2addr v3, v13

    .line 1223
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1224
    const v5, 0x3f99999a    # 1.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1225
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1226
    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassGreenButton;->p:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1221
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    goto :goto_ec

    .line 1228
    :cond_11f
    return-void

    .line 1192
    :cond_120
    :goto_120
    return-void
.end method
