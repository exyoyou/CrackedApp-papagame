.class public final Lcom/byazt/jb/sp$tt$1;
.super Lcom/byazt/jb/sp$tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x92c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jb/sp$tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/jb/sp$tt;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/jb/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/jb/tt;->n:Lcom/byazt/jb/tt;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/byazt/jb/i;->c(Lcom/byazt/jb/tt;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
