.class public Lcom/byazt/omf/ve$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x186
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/ve;->c(Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/omf/qy;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic da:I

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic n:J

.field public final synthetic sl:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

.field public final synthetic sp:Z

.field public final synthetic t:Lcom/byazt/ogz/sp;

.field public final synthetic tt:J

.field public final synthetic u:Lcom/byazt/omf/ve;

.field public final synthetic uj:J

.field public final synthetic ve:J

.field public final synthetic x:Lcom/byazt/dj/c;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/ve;Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/byazt/omf/ve$5;->u:Lcom/byazt/omf/ve;

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/byazt/omf/ve$5;->c:Landroid/content/Context;

    .line 7
    .line 8
    move-wide v1, p3

    .line 9
    iput-wide v1, v0, Lcom/byazt/omf/ve$5;->tt:J

    .line 10
    .line 11
    move-wide v1, p5

    .line 12
    iput-wide v1, v0, Lcom/byazt/omf/ve$5;->ve:J

    .line 13
    .line 14
    move-wide v1, p7

    .line 15
    iput-wide v1, v0, Lcom/byazt/omf/ve$5;->uj:J

    .line 16
    .line 17
    move-wide v1, p9

    .line 18
    iput-wide v1, v0, Lcom/byazt/omf/ve$5;->n:J

    .line 19
    .line 20
    move-object v1, p11

    .line 21
    iput-object v1, v0, Lcom/byazt/omf/ve$5;->a:Lcom/byazt/omf/qy;

    .line 22
    .line 23
    move v1, p12

    .line 24
    iput-boolean v1, v0, Lcom/byazt/omf/ve$5;->sp:Z

    .line 25
    .line 26
    move-object/from16 v1, p13

    .line 27
    .line 28
    iput-object v1, v0, Lcom/byazt/omf/ve$5;->x:Lcom/byazt/dj/c;

    .line 29
    .line 30
    move-object/from16 v1, p14

    .line 31
    .line 32
    iput-object v1, v0, Lcom/byazt/omf/ve$5;->i:Ljava/lang/String;

    .line 33
    .line 34
    move/from16 v1, p15

    .line 35
    .line 36
    iput v1, v0, Lcom/byazt/omf/ve$5;->da:I

    .line 37
    .line 38
    move-object/from16 v1, p16

    .line 39
    .line 40
    iput-object v1, v0, Lcom/byazt/omf/ve$5;->sl:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 41
    .line 42
    move-object/from16 v1, p17

    .line 43
    .line 44
    iput-object v1, v0, Lcom/byazt/omf/ve$5;->t:Lcom/byazt/ogz/sp;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/byazt/omf/ve$5;->u:Lcom/byazt/omf/ve;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/byazt/omf/ve$5;->c:Landroid/content/Context;

    .line 6
    .line 7
    iget-wide v3, v0, Lcom/byazt/omf/ve$5;->tt:J

    .line 8
    .line 9
    iget-wide v5, v0, Lcom/byazt/omf/ve$5;->ve:J

    .line 10
    .line 11
    iget-wide v7, v0, Lcom/byazt/omf/ve$5;->uj:J

    .line 12
    .line 13
    iget-wide v9, v0, Lcom/byazt/omf/ve$5;->n:J

    .line 14
    .line 15
    iget-object v11, v0, Lcom/byazt/omf/ve$5;->a:Lcom/byazt/omf/qy;

    .line 16
    .line 17
    iget-boolean v12, v0, Lcom/byazt/omf/ve$5;->sp:Z

    .line 18
    .line 19
    iget-object v13, v0, Lcom/byazt/omf/ve$5;->x:Lcom/byazt/dj/c;

    .line 20
    .line 21
    iget-object v14, v0, Lcom/byazt/omf/ve$5;->i:Ljava/lang/String;

    .line 22
    .line 23
    iget v15, v0, Lcom/byazt/omf/ve$5;->da:I

    .line 24
    .line 25
    move/from16 v16, v15

    .line 26
    .line 27
    iget-object v15, v0, Lcom/byazt/omf/ve$5;->sl:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 28
    .line 29
    move-object/from16 v17, v15

    .line 30
    .line 31
    iget-object v15, v0, Lcom/byazt/omf/ve$5;->t:Lcom/byazt/ogz/sp;

    .line 32
    .line 33
    move-object/from16 v18, v15

    .line 34
    .line 35
    move/from16 v15, v16

    .line 36
    .line 37
    move-object/from16 v16, v17

    .line 38
    .line 39
    move-object/from16 v17, v18

    .line 40
    .line 41
    invoke-static/range {v1 .. v17}, Lcom/byazt/omf/ve;->tt(Lcom/byazt/omf/ve;Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :catchall_0
    return-void
.end method
