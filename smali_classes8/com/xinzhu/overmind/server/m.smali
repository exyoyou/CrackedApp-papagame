.class public Lcom/xinzhu/overmind/server/m;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/xinzhu/overmind/server/m;->b:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
