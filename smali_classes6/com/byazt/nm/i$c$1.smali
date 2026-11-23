.class public Lcom/byazt/nm/i$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x4e9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/i$c;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/i$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/i$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/i$c$1;->c:Lcom/byazt/nm/i$c;

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
    iget-object v0, p0, Lcom/byazt/nm/i$c$1;->c:Lcom/byazt/nm/i$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->destroy()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
