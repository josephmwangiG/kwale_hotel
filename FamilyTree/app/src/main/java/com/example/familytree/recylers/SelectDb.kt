package com.example.kcmav1.recyclers

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.familytree.data.GetUser
import com.example.familytree.R

class SelectDb(var forumList :List<GetUser>, val listener:OnItemClickListener): RecyclerView.Adapter<SelectDb.MyViewHolder>() {

    inner class MyViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView), View.OnClickListener{

        fun bind(user: GetUser){
            val name=itemView.findViewById<TextView>(R.id.user_name)
            val number=itemView.findViewById<TextView>(R.id.user_number)
            name.text=user.name
            number.text=user.id
        }
        init
        {
            itemView.setOnClickListener (this)
        }
        override fun onClick(v: View) {
            listener.onItemClick(adapterPosition)
        }

    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyViewHolder {
        return MyViewHolder(LayoutInflater.from(parent.context).inflate(R.layout.list_item_user,parent,false))
    }

    override fun getItemCount(): Int {
        return forumList.size
    }

    override fun onBindViewHolder(holder: MyViewHolder, position: Int) {
        val currentItem=forumList[position]
        holder.bind(currentItem)
    }

    interface  OnItemClickListener{
        fun onItemClick(position: Int)
    }
}