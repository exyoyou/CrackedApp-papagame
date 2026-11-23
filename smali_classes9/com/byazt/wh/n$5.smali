.class public Lcom/byazt/wh/n$5;
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
        0x246
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/n;->c(Lcom/byazt/t/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/t/tt;

.field public final synthetic tt:Lcom/byazt/wh/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wh/n;Lcom/byazt/t/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wh/n$5;->tt:Lcom/byazt/wh/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wh/n$5;->c:Lcom/byazt/t/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/n$5;->tt:Lcom/byazt/wh/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wh/n;->tt(Lcom/byazt/wh/n;)Lcom/byazt/wh/sp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/wh/sp;->c()Landroid/database/sqlite/SQLiteStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/wh/n$5;->tt:Lcom/byazt/wh/n;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/wh/n$5;->c:Lcom/byazt/t/tt;

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Lcom/byazt/wh/n;->c(Lcom/byazt/wh/n;Lcom/byazt/t/tt;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
