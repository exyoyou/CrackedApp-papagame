.class public final Lcom/byazt/kk/tt$1;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26b,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kk/tt;->c(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/byazt/kk/tt$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kk/tt$c;


# direct methods
.method public constructor <init>(Lcom/byazt/kk/tt$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kk/tt$1;->c:Lcom/byazt/kk/tt$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kk/tt$1;->c:Lcom/byazt/kk/tt$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/byazt/kk/tt$c;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kk/tt$1;->c:Lcom/byazt/kk/tt$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/byazt/kk/tt$c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
