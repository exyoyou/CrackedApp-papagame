.class public Lcom/byazt/wh/n$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0x247
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/n;->c(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic n:Lcom/byazt/wh/n;

.field public final synthetic tt:I

.field public final synthetic uj:I

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/wh/n;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wh/n$8;->n:Lcom/byazt/wh/n;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/wh/n$8;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/wh/n$8;->tt:I

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/wh/n$8;->ve:I

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/wh/n$8;->uj:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/n$8;->n:Lcom/byazt/wh/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wh/n;->tt(Lcom/byazt/wh/n;)Lcom/byazt/wh/sp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/wh/sp;->ve()Landroid/database/sqlite/SQLiteStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    iget-object v1, p0, Lcom/byazt/wh/n$8;->n:Lcom/byazt/wh/n;

    .line 12
    .line 13
    iget v2, p0, Lcom/byazt/wh/n$8;->c:I

    .line 14
    .line 15
    iget v3, p0, Lcom/byazt/wh/n$8;->tt:I

    .line 16
    .line 17
    iget v4, p0, Lcom/byazt/wh/n$8;->ve:I

    .line 18
    .line 19
    iget v5, p0, Lcom/byazt/wh/n$8;->uj:I

    .line 20
    .line 21
    invoke-static/range {v1 .. v6}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;IIIILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
