.class public Lcom/byazt/tlc/tt$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x680,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tlc/tt;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tlc/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/tlc/tt;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tlc/tt$1;->c:Lcom/byazt/tlc/tt;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tlc/tt$1;->c:Lcom/byazt/tlc/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/tlc/tt;->c(Lcom/byazt/tlc/tt;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/tlc/tt$1;->c:Lcom/byazt/tlc/tt;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/tlc/tt;->sp()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/tlc/tt$1;->c:Lcom/byazt/tlc/tt;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/tlc/tt;->uj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :catchall_0
    return-void
.end method
