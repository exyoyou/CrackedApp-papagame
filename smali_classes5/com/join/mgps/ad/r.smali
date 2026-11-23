.class public final synthetic Lcom/join/mgps/ad/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/a;


# instance fields
.field public final synthetic a:Lcom/join/mgps/ad/s;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/ad/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/ad/r;->a:Lcom/join/mgps/ad/s;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/r;->a:Lcom/join/mgps/ad/s;

    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V

    return-void
.end method
