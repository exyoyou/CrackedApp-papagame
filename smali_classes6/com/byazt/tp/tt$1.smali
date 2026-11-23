.class public Lcom/byazt/tp/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b4,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tp/tt;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tp/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/tp/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tp/tt$1;->c:Lcom/byazt/tp/tt;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/tt$1;->c:Lcom/byazt/tp/tt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/tp/c;->uj()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
