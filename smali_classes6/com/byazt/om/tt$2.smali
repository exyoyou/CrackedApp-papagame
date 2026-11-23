.class public Lcom/byazt/om/tt$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/om/tt;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/om/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/om/tt;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/om/tt$2;->c:Lcom/byazt/om/tt;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/om/tt$2;->c:Lcom/byazt/om/tt;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/byazt/om/tt;->c(Lcom/byazt/om/tt;Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
