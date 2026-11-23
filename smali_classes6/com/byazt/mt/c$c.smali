.class public Lcom/byazt/mt/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ac,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/mt/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/mt/c;

.field public tt:I


# direct methods
.method public constructor <init>(Lcom/byazt/mt/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/mt/c$c;->c:Lcom/byazt/mt/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/mt/c$c;->tt:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/mt/c$c;->tt:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/mt/c$c;->c:Lcom/byazt/mt/c;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/mt/c;->a(Lcom/byazt/mt/c;)Lcom/byazt/du/x;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Lcom/byazt/du/sp;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x7f

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v0, 0x75

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/byazt/mt/c$c;->c:Lcom/byazt/mt/c;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/byazt/mt/c;->n(Lcom/byazt/mt/c;)Lcom/byazt/tm/DynamicRootView;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/byazt/tm/DynamicRootView;->c(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
