.class public Lcom/byazt/utw/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c2,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/utw/c;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/utw/c;


# direct methods
.method public constructor <init>(Lcom/byazt/utw/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/utw/c$1;->c:Lcom/byazt/utw/c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/utw/c$1;->c:Lcom/byazt/utw/c;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/utw/c;->n:Lcom/byazt/hsq/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/byazt/utw/c;->i:Lcom/byazt/utw/x;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/utw/c$1;->c:Lcom/byazt/utw/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/utw/c;->c(Lcom/byazt/utw/c;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
