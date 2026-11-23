.class public Lcom/byazt/ty/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ty/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d8,
        0x36
    }
.end annotation


# instance fields
.field public final c:Ljava/io/InputStream;

.field public final tt:Lcom/byazt/h/c;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ty/ve;->c:Ljava/io/InputStream;

    .line 5
    .line 6
    new-instance p1, Lcom/byazt/h/c;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Lcom/byazt/h/c;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/ty/ve;->tt:Lcom/byazt/h/c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/h/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/ty/ve;->tt:Lcom/byazt/h/c;

    iget-object v1, p0, Lcom/byazt/ty/ve;->c:Ljava/io/InputStream;

    iget-object v2, v0, Lcom/byazt/h/c;->c:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, v0, Lcom/byazt/h/c;->ve:I

    .line 3
    iget-object v0, p0, Lcom/byazt/ty/ve;->tt:Lcom/byazt/h/c;

    return-object v0
.end method

.method public c(Lcom/byazt/h/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public tt()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/io/Closeable;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/byazt/ty/ve;->c:Ljava/io/InputStream;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
