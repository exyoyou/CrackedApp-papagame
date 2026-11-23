.class public final synthetic Lcom/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/BaseAppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/BaseAppCompatActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c;->b:Lcom/BaseAppCompatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/c;->b:Lcom/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/BaseAppCompatActivity;->i(Lcom/BaseAppCompatActivity;)V

    return-void
.end method
