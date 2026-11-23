.class public final synthetic Lcom/windmill/gromore/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/windmill/gromore/a;


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/gromore/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/gromore/t;->b:Lcom/windmill/gromore/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/gromore/t;->b:Lcom/windmill/gromore/a;

    invoke-static {v0}, Lcom/windmill/gromore/a;->b(Lcom/windmill/gromore/a;)V

    return-void
.end method
