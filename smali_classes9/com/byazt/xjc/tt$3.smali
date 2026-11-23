.class public Lcom/byazt/xjc/tt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ff,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xjc/tt;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xjc/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/xjc/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xjc/tt$3;->c:Lcom/byazt/xjc/tt;

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
    iget-object v0, p0, Lcom/byazt/xjc/tt$3;->c:Lcom/byazt/xjc/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/xjc/tt;->x()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
