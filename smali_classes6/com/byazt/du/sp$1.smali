.class public Lcom/byazt/du/sp$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b9,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/du/sp;->c(Lcom/byazt/xl/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xl/u;

.field public final synthetic tt:Lcom/byazt/du/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/du/sp;Ljava/lang/String;Lcom/byazt/xl/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/du/sp$1;->tt:Lcom/byazt/du/sp;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/du/sp$1;->c:Lcom/byazt/xl/u;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/du/sp$1;->tt:Lcom/byazt/du/sp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/du/sp$1;->c:Lcom/byazt/xl/u;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/du/sp;->c(Lcom/byazt/du/sp;Lcom/byazt/xl/u;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
