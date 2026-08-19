.class Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VectorOutlineStatIcon"
.end annotation


# instance fields
.field private color:I

.field private p:Landroid/graphics/Paint;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 1241
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1242
    iput p2, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->type:I

    .line 1243
    iput p3, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->color:I

    .line 1244
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    .line 1245
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 1249
    move-object v0, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1250
    invoke-virtual {p0}, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->getWidth()I

    move-result v1

    .line 1251
    invoke-virtual {p0}, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->getHeight()I

    move-result v2

    .line 1252
    if-lez v1, :cond_212

    if-gtz v2, :cond_12

    goto/16 :goto_212

    .line 1254
    :cond_12
    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v1, v3

    .line 1255
    int-to-float v1, v2

    div-float v7, v1, v3

    .line 1257
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1258
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1259
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    const v2, 0x3fe66666    # 1.8f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1260
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1261
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1263
    iget v1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->type:I

    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v4, 0x41280000    # 10.5f

    const/high16 v5, 0x40900000    # 4.5f

    const/high16 v8, 0x41400000    # 12.0f

    if-nez v1, :cond_130

    .line 1264
    new-instance v1, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v9

    sub-float v9, v6, v9

    const/high16 v10, 0x41300000    # 11.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v11

    sub-float v11, v7, v11

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    add-float/2addr v8, v6

    const/high16 v12, 0x40a00000    # 5.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v13

    add-float/2addr v13, v7

    invoke-direct {v1, v9, v11, v8, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1265
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    iget-object v9, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v5, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1267
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1268
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v6, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    add-float/2addr v5, v7

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1269
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v6, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    add-float/2addr v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1270
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    sub-float v2, v6, v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1271
    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1273
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    const v2, 0x3fd9999a    # 1.7f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1274
    new-instance v1, Landroid/graphics/RectF;

    const v2, 0x40666666    # 3.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v6, v3

    const/high16 v4, 0x41000000    # 8.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    sub-float v4, v7, v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    add-float/2addr v2, v6

    const v8, 0x40333333    # 2.8f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    sub-float v5, v7, v5

    invoke-direct {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1275
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1276
    const v9, 0x3e4ccccd    # 0.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v0

    add-float v1, v6, v0

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v0

    sub-float v2, v7, v0

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v0

    add-float v3, v6, v0

    const v0, 0x3f19999a    # 0.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v0

    sub-float v4, v7, v0

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1277
    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1278
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v1

    add-float/2addr v6, v1

    const v1, 0x4019999a    # 2.4f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v1

    add-float/2addr v7, v1

    const v1, 0x3f8ccccd    # 1.1f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v1

    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1280
    goto/16 :goto_211

    :cond_130
    iget v1, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->type:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1d5

    .line 1281
    new-instance v1, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v9

    sub-float v9, v6, v9

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v10

    sub-float v10, v7, v10

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    add-float/2addr v8, v6

    const/high16 v11, 0x40b00000    # 5.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v12

    add-float/2addr v12, v7

    invoke-direct {v1, v9, v10, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1282
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    iget-object v9, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v5, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1284
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1285
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v6, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    add-float/2addr v5, v7

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1286
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v6, v3

    const/high16 v4, 0x41380000    # 11.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    add-float/2addr v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1287
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    sub-float v2, v6, v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v11}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1288
    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1290
    const/high16 v8, 0x40d00000    # 6.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v1

    sub-float v1, v6, v1

    const/high16 v9, 0x40600000    # 3.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    sub-float v2, v7, v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    add-float/2addr v3, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    sub-float v4, v7, v4

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1291
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v0

    sub-float v1, v6, v0

    const v0, 0x3fcccccd    # 1.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    add-float/2addr v2, v7

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    add-float/2addr v3, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v0

    add-float v4, v7, v0

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1293
    goto :goto_211

    .line 1294
    :cond_1d5
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v1

    .line 1295
    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1296
    const/high16 v1, 0x40c00000    # 6.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v1

    sub-float v4, v7, v1

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    move v3, v6

    move v1, v6

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1297
    const v0, 0x40933333    # 4.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v0

    add-float v3, v1, v0

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    move v4, v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1298
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1299
    const v3, 0x3fa66666    # 1.3f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$VectorOutlineStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1301
    :goto_211
    return-void

    .line 1252
    :cond_212
    :goto_212
    return-void
.end method
