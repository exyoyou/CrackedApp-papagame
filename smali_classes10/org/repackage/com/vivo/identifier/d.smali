.class public Lorg/repackage/com/vivo/identifier/d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "VMS_SDK_Observer"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lorg/repackage/com/vivo/identifier/c;


# direct methods
.method constructor <init>(Lorg/repackage/com/vivo/identifier/c;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lorg/repackage/com/vivo/identifier/d;->c:Lorg/repackage/com/vivo/identifier/c;

    .line 6
    .line 7
    iput p2, p0, Lorg/repackage/com/vivo/identifier/d;->b:I

    .line 8
    .line 9
    iput-object p3, p0, Lorg/repackage/com/vivo/identifier/d;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/repackage/com/vivo/identifier/d;->c:Lorg/repackage/com/vivo/identifier/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/repackage/com/vivo/identifier/d;->b:I

    .line 6
    .line 7
    iget-object v1, p0, Lorg/repackage/com/vivo/identifier/d;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lorg/repackage/com/vivo/identifier/c;->l(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
