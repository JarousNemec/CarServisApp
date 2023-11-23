namespace CarServisApp;

partial class Form1
{
    /// <summary>
    ///  Required designer variable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    ///  Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing)
    {
        if (disposing && (components != null))
        {
            components.Dispose();
        }

        base.Dispose(disposing);
    }

    #region Windows Form Designer generated code

    /// <summary>
    ///  Required method for Designer support - do not modify
    ///  the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
            this._lsbCustomers = new System.Windows.Forms.ListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this._lsbInterventions = new System.Windows.Forms.ListBox();
            this._lsbDetails = new System.Windows.Forms.ListBox();
            this.label3 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // _lsbCustomers
            // 
            this._lsbCustomers.FormattingEnabled = true;
            this._lsbCustomers.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this._lsbCustomers.ItemHeight = 20;
            this._lsbCustomers.Location = new System.Drawing.Point(12, 32);
            this._lsbCustomers.Name = "_lsbCustomers";
            this._lsbCustomers.ScrollAlwaysVisible = true;
            this._lsbCustomers.Size = new System.Drawing.Size(288, 184);
            this._lsbCustomers.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(129, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Seznam zákazníků";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 219);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(177, 20);
            this.label2.TabIndex = 2;
            this.label2.Text = "Seznam servisních zásahů";
            // 
            // _lsbInterventions
            // 
            this._lsbInterventions.FormattingEnabled = true;
            this._lsbInterventions.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this._lsbInterventions.ItemHeight = 20;
            this._lsbInterventions.Location = new System.Drawing.Point(12, 242);
            this._lsbInterventions.Name = "_lsbInterventions";
            this._lsbInterventions.ScrollAlwaysVisible = true;
            this._lsbInterventions.Size = new System.Drawing.Size(288, 184);
            this._lsbInterventions.TabIndex = 3;
            // 
            // _lsbDetails
            // 
            this._lsbDetails.FormattingEnabled = true;
            this._lsbDetails.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this._lsbDetails.ItemHeight = 20;
            this._lsbDetails.Location = new System.Drawing.Point(366, 32);
            this._lsbDetails.Name = "_lsbDetails";
            this._lsbDetails.ScrollAlwaysVisible = true;
            this._lsbDetails.Size = new System.Drawing.Size(310, 384);
            this._lsbDetails.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(366, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(185, 20);
            this.label3.TabIndex = 5;
            this.label3.Text = "Detail vybraného záznamu";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(691, 458);
            this.Controls.Add(this.label3);
            this.Controls.Add(this._lsbDetails);
            this.Controls.Add(this._lsbInterventions);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this._lsbCustomers);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

    }

    #endregion

    private ListBox _lsbCustomers;
    private Label label1;
    private Label label2;
    private ListBox _lsbInterventions;
    private ListBox _lsbDetails;
    private Label label3;
}