.class public Lcom/byazt/fh/n$3;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f9,
        0x1fb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fh/n;->ve(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/fh/n;


# direct methods
.method public constructor <init>(Lcom/byazt/fh/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fh/n$3;->tt:Lcom/byazt/fh/n;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/fh/n$3;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/byazt/fh/n$3;->tt:Lcom/byazt/fh/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/fh/n$3;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/fh/n;->c(Lcom/byazt/fh/n;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
