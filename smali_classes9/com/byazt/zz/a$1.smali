.class public Lcom/byazt/zz/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbd,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zz/a;->sl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zz/a;


# direct methods
.method public constructor <init>(Lcom/byazt/zz/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zz/a$1;->c:Lcom/byazt/zz/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/zz/a$1;->c:Lcom/byazt/zz/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zz/a;->tt(Lcom/byazt/zz/a;)Lcom/byazt/zz/da;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/zz/a$1;->c:Lcom/byazt/zz/a;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/byazt/zz/a;->c(Lcom/byazt/zz/a;)Lcom/byazt/t/DownloadInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->i(I)Lcom/byazt/t/DownloadInfo;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/zz/a$1;->c:Lcom/byazt/zz/a;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v0, v1, v2}, Lcom/byazt/zz/a;->c(Lcom/byazt/zz/a;ILcom/byazt/m/BaseException;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
