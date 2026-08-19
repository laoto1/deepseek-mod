.class Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlassBotIcon"
.end annotation


# instance fields
.field private p:Landroid/graphics/Paint;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1135
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1136
    iput p2, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->theme:I

    .line 1137
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    .line 1138
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 21

    .line 1142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1143
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->getWidth()I

    move-result v2

    .line 1144
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->getHeight()I

    move-result v3

    .line 1145
    if-lez v2, :cond_3a2

    if-gtz v3, :cond_15

    goto/16 :goto_3a2

    .line 1147
    :cond_15
    int-to-float v7, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float v2, v7, v12

    .line 1148
    int-to-float v8, v3

    div-float v13, v8, v12

    .line 1149
    new-instance v3, Landroid/graphics/RectF;

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

    invoke-direct {v3, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1151
    nop

    .line 1152
    iget v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->theme:I

    rem-int/lit8 v4, v4, 0x5

    const v5, -0xc47d0a

    packed-switch v4, :pswitch_data_3a4

    const v4, -0xe2b128

    const v6, -0x9f5a06

    const v9, -0xc47d0a

    const v10, -0xe2b128

    const v15, -0x9f5a06

    goto :goto_ae

    .line 1157
    :pswitch_53
    const v5, -0x15a7f4

    const v4, -0x3dbef4

    const v6, -0x46dc4

    const v9, -0x15a7f4

    const v10, -0x3dbef4

    const v15, -0x46dc4

    goto :goto_ae

    .line 1156
    :pswitch_66
    const v5, -0xfd7b39

    const v4, -0xfc965f

    const v6, -0xc74208

    const v9, -0xfd7b39

    const v10, -0xfc965f

    const v15, -0xc74208

    goto :goto_ae

    .line 1155
    :pswitch_79
    const v5, -0x74a30a

    const v4, -0x92d727

    const v6, -0x587406

    const v9, -0x74a30a

    const v10, -0x92d727

    const v15, -0x587406

    goto :goto_ae

    .line 1154
    :pswitch_8c
    const v5, -0xef467f

    const v4, -0xfa6997

    const v6, -0xcb2c67

    const v9, -0xef467f

    const v10, -0xfa6997

    const v15, -0xcb2c67

    goto :goto_ae

    .line 1153
    :pswitch_9f
    const v4, -0xb0b91b

    const v6, -0x7e7308

    const v9, -0xc47d0a

    const v10, -0xb0b91b

    const v15, -0x7e7308

    .line 1160
    :goto_ae
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1161
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    move-object v5, v4

    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object/from16 v12, v16

    const/high16 v17, 0x40000000    # 2.0f

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1162
    const/high16 v4, 0x41300000    # 11.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1163
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1165
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    const v6, 0x35ffffff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1166
    new-instance v5, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v9

    sub-float/2addr v7, v9

    invoke-direct {v5, v6, v8, v7, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1167
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1169
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1170
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1171
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    const v7, 0x3f99999a    # 1.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1172
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1174
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1176
    iget v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->theme:I

    rem-int/lit8 v3, v3, 0x5

    const/high16 v8, 0x40900000    # 4.5f

    const/high16 v9, 0x40f00000    # 7.5f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x3fc00000    # 1.5f

    if-nez v3, :cond_214

    .line 1177
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1178
    const/high16 v3, 0x41200000    # 10.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v13, v3

    const v6, 0x3fe66666    # 1.8f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    iget-object v10, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1179
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1180
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1181
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v13, v3

    const/high16 v10, 0x40c00000    # 6.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    sub-float v5, v13, v4

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1183
    move v11, v2

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x41180000    # 9.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    sub-float v4, v11, v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    sub-float v5, v13, v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    add-float/2addr v3, v11

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    add-float/2addr v6, v13

    invoke-direct {v2, v4, v5, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1184
    const/high16 v3, 0x40800000    # 4.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1186
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    const v3, -0xf0edd6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1187
    const v2, 0x40866666    # 4.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v11, v3

    const v4, 0x3e4ccccd    # 0.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    add-float/2addr v5, v13

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v17 .. v17}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    iget-object v9, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1188
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    add-float/2addr v2, v11

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    add-float/2addr v3, v13

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v17 .. v17}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1190
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1191
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1192
    const/high16 v2, 0x40400000    # 3.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v11, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    add-float/2addr v4, v13

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    add-float/2addr v2, v11

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    add-float/2addr v5, v13

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    move/from16 v18, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1193
    goto/16 :goto_3a1

    :cond_214
    move v11, v2

    iget v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->theme:I

    rem-int/lit8 v2, v2, 0x5

    const/4 v10, 0x6

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/high16 v12, 0x40e00000    # 7.0f

    if-ne v2, v6, :cond_265

    .line 1194
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1195
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v17 .. v17}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1196
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1197
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    .line 1198
    const/4 v8, 0x0

    :goto_23c
    if-ge v8, v10, :cond_263

    .line 1199
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1200
    mul-int/lit8 v2, v8, 0x3c

    int-to-float v2, v2

    invoke-virtual {v1, v2, v11, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1201
    new-instance v2, Landroid/graphics/RectF;

    sub-float v3, v11, v7

    sub-float v4, v13, v7

    add-float v5, v11, v7

    add-float v6, v13, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1202
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1198
    add-int/lit8 v8, v8, 0x1

    goto :goto_23c

    .line 1204
    :cond_263
    goto/16 :goto_3a1

    :cond_265
    iget v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->theme:I

    rem-int/lit8 v2, v2, 0x5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2c2

    .line 1205
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1206
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1207
    const/high16 v3, 0x41100000    # 9.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    .line 1208
    sub-float v4, v13, v3

    invoke-virtual {v2, v11, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1209
    add-float v4, v11, v3

    invoke-virtual {v2, v11, v13, v4, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1210
    invoke-virtual {v2, v11, v13, v4, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1211
    sub-float v3, v11, v3

    invoke-virtual {v2, v11, v13, v3, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1212
    invoke-virtual {v2, v11, v13, v3, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1213
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1214
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    add-float/2addr v2, v11

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v13, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1215
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    sub-float v2, v11, v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v12}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    add-float/2addr v13, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1216
    goto/16 :goto_3a1

    :cond_2c2
    iget v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->theme:I

    rem-int/lit8 v2, v2, 0x5

    const/4 v6, 0x3

    if-ne v2, v6, :cond_34c

    .line 1217
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1218
    new-instance v2, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v11, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    add-float/2addr v6, v13

    const/high16 v7, 0x40600000    # 3.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v10

    sub-float v10, v11, v10

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v12

    add-float/2addr v12, v13

    invoke-direct {v2, v3, v6, v10, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    iget-object v10, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v6, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1219
    new-instance v2, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v17 .. v17}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    sub-float v3, v11, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    sub-float v6, v13, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v17 .. v17}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    add-float/2addr v8, v11

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v10

    add-float/2addr v10, v13

    invoke-direct {v2, v3, v6, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1220
    new-instance v2, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    add-float/2addr v3, v11

    const/high16 v6, 0x41080000    # 8.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    sub-float v6, v13, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    add-float/2addr v7, v11

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    add-float/2addr v13, v4

    invoke-direct {v2, v3, v6, v7, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3a1

    .line 1222
    :cond_34c
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1223
    nop

    :goto_354
    if-ge v3, v10, :cond_395

    .line 1224
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1225
    mul-int/lit8 v2, v3, 0x3c

    int-to-float v2, v2

    invoke-virtual {v1, v2, v11, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1226
    new-instance v2, Landroid/graphics/RectF;

    const v4, 0x3fcccccd    # 1.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    sub-float v5, v11, v5

    const/high16 v6, 0x41080000    # 8.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    sub-float v6, v13, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v7

    add-float/2addr v7, v11

    const/high16 v8, 0x40200000    # 2.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v8

    sub-float v8, v13, v8

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v4

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1227
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1223
    add-int/lit8 v3, v3, 0x1

    goto :goto_354

    .line 1229
    :cond_395
    const v2, 0x400ccccd    # 2.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassBotIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v13, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1231
    :goto_3a1
    return-void

    .line 1145
    :cond_3a2
    :goto_3a2
    return-void

    nop

    :pswitch_data_3a4
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_8c
        :pswitch_79
        :pswitch_66
        :pswitch_53
    .end packed-switch
.end method
