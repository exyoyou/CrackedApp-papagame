.class public final Lcom/byazt/gqp/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x143,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/gqp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/gqp/c$c;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/gqp/c$c;->c:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public tt()Lcom/byazt/gqp/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/gqp/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/gqp/c;-><init>(Lcom/byazt/gqp/c$c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
