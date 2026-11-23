.class final enum Lcom/android/dx/BinaryOp$4;
.super Lcom/android/dx/BinaryOp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/BinaryOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/BinaryOp;-><init>(Ljava/lang/String;ILcom/android/dx/BinaryOp$1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/dx/rop/code/Rops;->opDiv(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
