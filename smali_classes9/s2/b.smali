.class public final synthetic Ls2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ls2/c;


# direct methods
.method public synthetic constructor <init>(Ls2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/b;->b:Ls2/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls2/b;->b:Ls2/c;

    invoke-static {v0}, Ls2/c;->g(Ls2/c;)V

    return-void
.end method
