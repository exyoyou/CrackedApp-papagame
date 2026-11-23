.class public final Lcom/byazt/mk/gt$1;
.super Lcom/byazt/mk/gt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x287,
        0x4df
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/mk/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/mk/gt;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(J)Lcom/byazt/mk/gt;
    .locals 0

    .line 1
    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/mk/gt;
    .locals 0

    .line 2
    return-object p0
.end method

.method public sp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
