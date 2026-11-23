.class public final synthetic Ly1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/byazt/tjo/c;


# direct methods
.method public synthetic constructor <init>(Lcom/byazt/tjo/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/b;->b:Lcom/byazt/tjo/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/b;->b:Lcom/byazt/tjo/c;

    invoke-static {v0}, Lcom/byazt/tjo/c;->a(Lcom/byazt/tjo/c;)V

    return-void
.end method
