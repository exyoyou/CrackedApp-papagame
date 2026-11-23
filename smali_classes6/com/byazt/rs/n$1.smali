.class public Lcom/byazt/rs/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kk/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x288,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rs/n;->c(Lcom/byazt/rs/uj;Lcom/byazt/rs/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/rs/n;

.field public final synthetic c:Lcom/byazt/rs/uj;

.field public final synthetic n:Lcom/byazt/rs/sp;

.field public final synthetic tt:Ljava/io/File;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/rs/n;Lcom/byazt/rs/uj;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/rs/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rs/n$1;->a:Lcom/byazt/rs/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/rs/n$1;->c:Lcom/byazt/rs/uj;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/rs/n$1;->tt:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/rs/n$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/rs/n$1;->uj:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/rs/n$1;->n:Lcom/byazt/rs/sp;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/rs/n$1;->a:Lcom/byazt/rs/n;

    iget-object v1, p0, Lcom/byazt/rs/n$1;->c:Lcom/byazt/rs/uj;

    iget-object v2, p0, Lcom/byazt/rs/n$1;->tt:Ljava/io/File;

    iget-object v3, p0, Lcom/byazt/rs/n$1;->ve:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/rs/n$1;->uj:Ljava/lang/String;

    iget-object v5, p0, Lcom/byazt/rs/n$1;->n:Lcom/byazt/rs/sp;

    invoke-static/range {v0 .. v5}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/n;Lcom/byazt/rs/uj;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/rs/sp;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Unknown error"

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/byazt/rs/n$1;->a:Lcom/byazt/rs/n;

    iget-object v0, p0, Lcom/byazt/rs/n$1;->n:Lcom/byazt/rs/sp;

    iget-object v1, p0, Lcom/byazt/rs/n$1;->c:Lcom/byazt/rs/uj;

    const/16 v2, 0x3ed

    invoke-static {p2, v0, v1, v2, p1}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/n;Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/rs/n$1;->a:Lcom/byazt/rs/n;

    iget-object p2, p0, Lcom/byazt/rs/n$1;->tt:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/byazt/rs/n;->c(Lcom/byazt/rs/n;Ljava/io/File;)V

    return-void
.end method
